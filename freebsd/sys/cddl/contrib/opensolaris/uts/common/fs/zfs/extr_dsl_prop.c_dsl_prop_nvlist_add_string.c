
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int nvlist_t ;


 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int VERIFY (int) ;
 int ZPROP_VALUE ;
 scalar_t__ nvlist_add_nvlist (int *,char const*,int *) ;
 scalar_t__ nvlist_add_string (int *,int ,char const*) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,char const*,int **) ;
 char* zfs_prop_to_name (int ) ;

void
dsl_prop_nvlist_add_string(nvlist_t *nv, zfs_prop_t prop, const char *value)
{
 nvlist_t *propval;
 const char *propname = zfs_prop_to_name(prop);

 if (nvlist_lookup_nvlist(nv, propname, &propval) == 0) {
  VERIFY(nvlist_add_string(propval, ZPROP_VALUE, value) == 0);
  return;
 }

 VERIFY(nvlist_alloc(&propval, NV_UNIQUE_NAME, KM_SLEEP) == 0);
 VERIFY(nvlist_add_string(propval, ZPROP_VALUE, value) == 0);
 VERIFY(nvlist_add_nvlist(nv, propname, propval) == 0);
 nvlist_free(propval);
}
