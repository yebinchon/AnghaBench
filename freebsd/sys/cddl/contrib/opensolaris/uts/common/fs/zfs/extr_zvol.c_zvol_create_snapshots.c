
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int objset_t ;


 int DS_FIND_SNAPSHOTS ;
 int EEXIST ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int FTAG ;
 int KM_SLEEP ;
 int MAXPATHLEN ;
 int dmu_objset_find (char const*,int ,int *,int ) ;
 int dmu_objset_pool (int *) ;
 int dmu_objset_prefetch ;
 int dmu_objset_rele (int *,int ) ;
 int dmu_snapshot_list_next (int *,int,char*,scalar_t__*,scalar_t__*,int *) ;
 int dsl_pool_config_enter (int ,int ) ;
 int dsl_pool_config_exit (int ,int ) ;
 char* kmem_alloc (int,int ) ;
 int kmem_free (char*,int) ;
 int printf (char*,char*,int) ;
 int snprintf (char*,int,char*,char const*) ;
 int zvol_create_minor (char*) ;

__attribute__((used)) static int
zvol_create_snapshots(objset_t *os, const char *name)
{
 uint64_t cookie, obj;
 char *sname;
 int error, len;

 cookie = obj = 0;
 sname = kmem_alloc(MAXPATHLEN, KM_SLEEP);






 for (;;) {
  len = snprintf(sname, MAXPATHLEN, "%s@", name);
  if (len >= MAXPATHLEN) {
   dmu_objset_rele(os, FTAG);
   error = ENAMETOOLONG;
   break;
  }

  dsl_pool_config_enter(dmu_objset_pool(os), FTAG);
  error = dmu_snapshot_list_next(os, MAXPATHLEN - len,
      sname + len, &obj, &cookie, ((void*)0));
  dsl_pool_config_exit(dmu_objset_pool(os), FTAG);
  if (error != 0) {
   if (error == ENOENT)
    error = 0;
   break;
  }

  error = zvol_create_minor(sname);
  if (error != 0 && error != EEXIST) {
   printf("ZFS WARNING: Unable to create ZVOL %s (error=%d).\n",
       sname, error);
   break;
  }
 }

 kmem_free(sname, MAXPATHLEN);
 return (error);
}
