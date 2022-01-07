
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ zfs_prop_t ;
typedef int zap_cursor_t ;
struct TYPE_3__ {char* za_name; int za_integer_length; int za_first_integer; int za_num_integers; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int nvlist_t ;
typedef int dsl_prop_getflags_t ;


 int ASSERT (int) ;
 int DSL_PROP_GET_INHERITING ;
 int DSL_PROP_GET_LOCAL ;
 int DSL_PROP_GET_RECEIVED ;
 int DSL_PROP_GET_SNAPSHOT ;
 int ENOENT ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int VERIFY (int) ;
 int ZAP_MAXNAMELEN ;
 int ZFS_TYPE_SNAPSHOT ;
 int ZPROP_INHERIT_SUFFIX ;
 scalar_t__ ZPROP_INVAL ;
 int ZPROP_RECVD_SUFFIX ;
 int ZPROP_SOURCE ;
 char const* ZPROP_SOURCE_VAL_RECVD ;
 int ZPROP_VALUE ;
 char* kmem_alloc (int ,int ) ;
 char* kmem_asprintf (char*,char const*,int ) ;
 int kmem_free (char*,int ) ;
 scalar_t__ nvlist_add_nvlist (int *,char const*,int *) ;
 scalar_t__ nvlist_add_string (int *,int ,char const*) ;
 int nvlist_add_uint64 (int *,int ,int ) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 scalar_t__ nvlist_exists (int *,char const*) ;
 int nvlist_free (int *) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strfree (char*) ;
 int strncpy (char*,char*,int) ;
 int zap_contains (int *,int ,char const*) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,int ) ;
 int zap_cursor_retrieve (int *,TYPE_1__*) ;
 int zap_lookup (int *,int ,char const*,int,int ,char*) ;
 scalar_t__ zfs_name_to_prop (char const*) ;
 int zfs_prop_inheritable (scalar_t__) ;
 int zfs_prop_valid_for_type (scalar_t__,int ) ;

__attribute__((used)) static int
dsl_prop_get_all_impl(objset_t *mos, uint64_t propobj,
    const char *setpoint, dsl_prop_getflags_t flags, nvlist_t *nv)
{
 zap_cursor_t zc;
 zap_attribute_t za;
 int err = 0;

 for (zap_cursor_init(&zc, mos, propobj);
     (err = zap_cursor_retrieve(&zc, &za)) == 0;
     zap_cursor_advance(&zc)) {
  nvlist_t *propval;
  zfs_prop_t prop;
  char buf[ZAP_MAXNAMELEN];
  char *valstr;
  const char *suffix;
  const char *propname;
  const char *source;

  suffix = strchr(za.za_name, '$');

  if (suffix == ((void*)0)) {




   if (flags & DSL_PROP_GET_RECEIVED)
    continue;

   propname = za.za_name;
   source = setpoint;
  } else if (strcmp(suffix, ZPROP_INHERIT_SUFFIX) == 0) {

   continue;
  } else if (strcmp(suffix, ZPROP_RECVD_SUFFIX) == 0) {
   if (flags & DSL_PROP_GET_LOCAL)
    continue;

   (void) strncpy(buf, za.za_name, (suffix - za.za_name));
   buf[suffix - za.za_name] = '\0';
   propname = buf;

   if (!(flags & DSL_PROP_GET_RECEIVED)) {

    err = zap_contains(mos, propobj, propname);
    if (err == 0)
     continue;
    if (err != ENOENT)
     break;


    valstr = kmem_asprintf("%s%s", propname,
        ZPROP_INHERIT_SUFFIX);
    err = zap_contains(mos, propobj, valstr);
    strfree(valstr);
    if (err == 0)
     continue;
    if (err != ENOENT)
     break;
   }

   source = ((flags & DSL_PROP_GET_INHERITING) ?
       setpoint : ZPROP_SOURCE_VAL_RECVD);
  } else {




   continue;
  }

  prop = zfs_name_to_prop(propname);


  if ((flags & DSL_PROP_GET_INHERITING) && prop != ZPROP_INVAL &&
      !zfs_prop_inheritable(prop))
   continue;


  if ((flags & DSL_PROP_GET_SNAPSHOT) && prop != ZPROP_INVAL &&
      !zfs_prop_valid_for_type(prop, ZFS_TYPE_SNAPSHOT))
   continue;


  if (nvlist_exists(nv, propname))
   continue;

  VERIFY(nvlist_alloc(&propval, NV_UNIQUE_NAME, KM_SLEEP) == 0);
  if (za.za_integer_length == 1) {



   char *tmp = kmem_alloc(za.za_num_integers,
       KM_SLEEP);
   err = zap_lookup(mos, propobj,
       za.za_name, 1, za.za_num_integers, tmp);
   if (err != 0) {
    kmem_free(tmp, za.za_num_integers);
    break;
   }
   VERIFY(nvlist_add_string(propval, ZPROP_VALUE,
       tmp) == 0);
   kmem_free(tmp, za.za_num_integers);
  } else {



   ASSERT(za.za_integer_length == 8);
   (void) nvlist_add_uint64(propval, ZPROP_VALUE,
       za.za_first_integer);
  }

  VERIFY(nvlist_add_string(propval, ZPROP_SOURCE, source) == 0);
  VERIFY(nvlist_add_nvlist(nv, propname, propval) == 0);
  nvlist_free(propval);
 }
 zap_cursor_fini(&zc);
 if (err == ENOENT)
  err = 0;
 return (err);
}
