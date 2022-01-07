
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lfstestargs {int ta_cleanerloop; int ta_cleanerthread; int ta_mntpath; int ta_uargs; } ;
typedef int atf_tc_t ;


 int MOUNT_LFS ;
 int cleaner ;
 int pthread_create (int *,int *,int ,struct lfstestargs*) ;
 int rump_sys_mkdir (char const*,int) ;
 int rump_sys_mount (int ,char const*,int,int *,int) ;
 int sem_wait (int *) ;
 int strcpy (int ,char const*) ;

int
lfs_fstest_mount(const atf_tc_t *tc, void *buf, const char *path, int flags)
{
 struct lfstestargs *args = buf;
 int res;

 res = rump_sys_mkdir(path, 0777);
 if (res == -1)
  return res;

 res = rump_sys_mount(MOUNT_LFS, path, flags, &args->ta_uargs,
     sizeof(args->ta_uargs));
 if (res == -1)
  return res;

 strcpy(args->ta_mntpath, path);
 res = pthread_create(&args->ta_cleanerthread, ((void*)0), cleaner, args);
 if (res)
  return res;


 sem_wait(&args->ta_cleanerloop);

 return 0;
}
