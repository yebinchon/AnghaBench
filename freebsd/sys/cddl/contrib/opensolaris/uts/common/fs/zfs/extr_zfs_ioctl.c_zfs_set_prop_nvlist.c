
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zprop_source_t ;
typedef scalar_t__ zfs_prop_t ;
typedef int uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int CE_PANIC ;
 int CRED () ;
 scalar_t__ DATA_TYPE_NVLIST ;
 scalar_t__ DATA_TYPE_STRING ;
 scalar_t__ DATA_TYPE_UINT64 ;
 scalar_t__ DATA_TYPE_UINT64_ARRAY ;
 int EINVAL ;



 int SET_ERROR (int ) ;
 scalar_t__ ZPROP_INVAL ;
 int ZPROP_VALUE ;
 int cmn_err (int ,char*) ;
 int dsl_prop_set_int (char const*,char const*,int ,int ) ;
 int dsl_prop_set_string (char const*,char const*,int ,char*) ;
 scalar_t__ dsl_props_set (char const*,int ,int *) ;
 int fnvlist_add_int32 (int *,char const*,int) ;
 int * fnvlist_alloc () ;
 int * fnvlist_lookup_nvpair (int *,int ) ;
 int * fnvpair_value_nvlist (int *) ;
 char* fnvpair_value_string (int *) ;
 int fnvpair_value_uint64 (int *) ;
 int nvlist_add_nvpair (int *,int *) ;
 int nvlist_empty (int *) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvpair (int *,int ,int **) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_type (int *) ;
 int zfs_check_settable (char const*,int *,int ) ;
 scalar_t__ zfs_name_to_prop (char const*) ;
 int zfs_prop_get_type (scalar_t__) ;
 int zfs_prop_index_to_string (scalar_t__,int ,char const**) ;
 int zfs_prop_set_special (char const*,int ,int *) ;
 scalar_t__ zfs_prop_user (char const*) ;
 scalar_t__ zfs_prop_userquota (char const*) ;

int
zfs_set_prop_nvlist(const char *dsname, zprop_source_t source, nvlist_t *nvl,
    nvlist_t *errlist)
{
 nvpair_t *pair;
 nvpair_t *propval;
 int rv = 0;
 uint64_t intval;
 char *strval;
 nvlist_t *genericnvl = fnvlist_alloc();
 nvlist_t *retrynvl = fnvlist_alloc();

retry:
 pair = ((void*)0);
 while ((pair = nvlist_next_nvpair(nvl, pair)) != ((void*)0)) {
  const char *propname = nvpair_name(pair);
  zfs_prop_t prop = zfs_name_to_prop(propname);
  int err = 0;


  propval = pair;
  if (nvpair_type(pair) == DATA_TYPE_NVLIST) {
   nvlist_t *attrs;
   attrs = fnvpair_value_nvlist(pair);
   if (nvlist_lookup_nvpair(attrs, ZPROP_VALUE,
       &propval) != 0)
    err = SET_ERROR(EINVAL);
  }


  if (err == 0 && prop == ZPROP_INVAL) {
   if (zfs_prop_user(propname)) {
    if (nvpair_type(propval) != DATA_TYPE_STRING)
     err = SET_ERROR(EINVAL);
   } else if (zfs_prop_userquota(propname)) {
    if (nvpair_type(propval) !=
        DATA_TYPE_UINT64_ARRAY)
     err = SET_ERROR(EINVAL);
   } else {
    err = SET_ERROR(EINVAL);
   }
  } else if (err == 0) {
   if (nvpair_type(propval) == DATA_TYPE_STRING) {
    if (zfs_prop_get_type(prop) != 128)
     err = SET_ERROR(EINVAL);
   } else if (nvpair_type(propval) == DATA_TYPE_UINT64) {
    const char *unused;

    intval = fnvpair_value_uint64(propval);

    switch (zfs_prop_get_type(prop)) {
    case 129:
     break;
    case 128:
     err = SET_ERROR(EINVAL);
     break;
    case 130:
     if (zfs_prop_index_to_string(prop,
         intval, &unused) != 0)
      err = SET_ERROR(EINVAL);
     break;
    default:
     cmn_err(CE_PANIC,
         "unknown property type");
    }
   } else {
    err = SET_ERROR(EINVAL);
   }
  }


  if (err == 0)
   err = zfs_check_settable(dsname, pair, CRED());

  if (err == 0) {
   err = zfs_prop_set_special(dsname, source, pair);
   if (err == -1) {




    err = nvlist_add_nvpair(genericnvl, pair);
   } else if (err != 0 && nvl != retrynvl) {





    err = nvlist_add_nvpair(retrynvl, pair);
   }
  }

  if (err != 0) {
   if (errlist != ((void*)0))
    fnvlist_add_int32(errlist, propname, err);
   rv = err;
  }
 }

 if (nvl != retrynvl && !nvlist_empty(retrynvl)) {
  nvl = retrynvl;
  goto retry;
 }

 if (!nvlist_empty(genericnvl) &&
     dsl_props_set(dsname, source, genericnvl) != 0) {




  pair = ((void*)0);
  while ((pair = nvlist_next_nvpair(genericnvl, pair)) != ((void*)0)) {
   const char *propname = nvpair_name(pair);
   int err = 0;

   propval = pair;
   if (nvpair_type(pair) == DATA_TYPE_NVLIST) {
    nvlist_t *attrs;
    attrs = fnvpair_value_nvlist(pair);
    propval = fnvlist_lookup_nvpair(attrs,
        ZPROP_VALUE);
   }

   if (nvpair_type(propval) == DATA_TYPE_STRING) {
    strval = fnvpair_value_string(propval);
    err = dsl_prop_set_string(dsname, propname,
        source, strval);
   } else {
    intval = fnvpair_value_uint64(propval);
    err = dsl_prop_set_int(dsname, propname, source,
        intval);
   }

   if (err != 0) {
    if (errlist != ((void*)0)) {
     fnvlist_add_int32(errlist, propname,
         err);
    }
    rv = err;
   }
  }
 }
 nvlist_free(genericnvl);
 nvlist_free(retrynvl);

 return (rv);
}
