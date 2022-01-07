
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_8__ {int os_dsl_dataset; } ;
typedef TYPE_1__ objset_t ;


 scalar_t__ DMU_OST_ZFS ;
 scalar_t__ DMU_OST_ZVOL ;
 int EEXIST ;
 int ENOENT ;
 int FTAG ;
 int KM_SLEEP ;
 int MAXPATHLEN ;
 scalar_t__ dataset_name_hidden (char const*) ;
 scalar_t__ dmu_dir_list_next (TYPE_1__*,int,char*,int *,scalar_t__*) ;
 int dmu_objset_hold (char const*,int ,TYPE_1__**) ;
 int dmu_objset_pool (TYPE_1__*) ;
 int dmu_objset_prefetch (char*,int *) ;
 int dmu_objset_rele (TYPE_1__*,int ) ;
 scalar_t__ dmu_objset_type (TYPE_1__*) ;
 int dsl_dataset_long_hold (int ,int ) ;
 int dsl_dataset_long_rele (int ,int ) ;
 int dsl_dataset_rele (int ,int ) ;
 int dsl_pool_rele (int ,int ) ;
 char* kmem_alloc (int,int ) ;
 int kmem_free (char*,int) ;
 int printf (char*,char const*,int) ;
 int snprintf (char*,int,char*,char const*) ;
 int strlen (char*) ;
 int zvol_create_minor (char const*) ;
 int zvol_create_snapshots (TYPE_1__*,char const*) ;

int
zvol_create_minors(const char *name)
{
 uint64_t cookie;
 objset_t *os;
 char *osname, *p;
 int error, len;

 if (dataset_name_hidden(name))
  return (0);

 if ((error = dmu_objset_hold(name, FTAG, &os)) != 0) {
  printf("ZFS WARNING: Unable to put hold on %s (error=%d).\n",
      name, error);
  return (error);
 }
 if (dmu_objset_type(os) == DMU_OST_ZVOL) {
  dsl_dataset_long_hold(os->os_dsl_dataset, FTAG);
  dsl_pool_rele(dmu_objset_pool(os), FTAG);
  error = zvol_create_minor(name);
  if (error == 0 || error == EEXIST) {
   error = zvol_create_snapshots(os, name);
  } else {
   printf("ZFS WARNING: Unable to create ZVOL %s (error=%d).\n",
       name, error);
  }
  dsl_dataset_long_rele(os->os_dsl_dataset, FTAG);
  dsl_dataset_rele(os->os_dsl_dataset, FTAG);
  return (error);
 }
 if (dmu_objset_type(os) != DMU_OST_ZFS) {
  dmu_objset_rele(os, FTAG);
  return (0);
 }

 osname = kmem_alloc(MAXPATHLEN, KM_SLEEP);
 if (snprintf(osname, MAXPATHLEN, "%s/", name) >= MAXPATHLEN) {
  dmu_objset_rele(os, FTAG);
  kmem_free(osname, MAXPATHLEN);
  return (ENOENT);
 }
 p = osname + strlen(osname);
 len = MAXPATHLEN - (p - osname);
 cookie = 0;
 while (dmu_dir_list_next(os, MAXPATHLEN - (p - osname), p, ((void*)0),
     &cookie) == 0) {
  dmu_objset_rele(os, FTAG);
  (void)zvol_create_minors(osname);
  if ((error = dmu_objset_hold(name, FTAG, &os)) != 0) {
   printf("ZFS WARNING: Unable to put hold on %s (error=%d).\n",
       name, error);
   return (error);
  }
 }

 dmu_objset_rele(os, FTAG);
 kmem_free(osname, MAXPATHLEN);
 return (0);
}
