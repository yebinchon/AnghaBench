
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct puffs_kargs {int pa_fd; } ;
typedef int pthread_t ;
typedef int kargs ;


 int ATF_REQUIRE (int) ;
 int ITERATIONS ;
 int MNT_FORCE ;
 int MOUNT_PUFFS ;
 int dacv ;
 int dafd ;
 int damtx ;
 int fixup (int,struct puffs_kargs*) ;
 int printf (char*,unsigned long) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int respondthread ;
 int rump_init () ;
 scalar_t__ rump_sys_mkdir (char*,int) ;
 scalar_t__ rump_sys_mount (int ,char*,int ,struct puffs_kargs*,int) ;
 int rump_sys_stat (char*,struct stat*) ;
 int rump_sys_unmount (char*,int ) ;
 int srandom (unsigned long) ;
 int tests_makegarbage (struct puffs_kargs*,int) ;
 unsigned long time (int *) ;
 int unfixup (int,struct puffs_kargs*) ;

__attribute__((used)) static void
testbody(int nfix)
{
 pthread_t pt;
 struct puffs_kargs kargs;
 unsigned long seed;
 int i;

 seed = time(((void*)0));
 srandom(seed);
 printf("test seeded RNG with %lu\n", seed);

 rump_init();

 pthread_mutex_init(&damtx, ((void*)0));
 pthread_cond_init(&dacv, ((void*)0));
 pthread_create(&pt, ((void*)0), respondthread, ((void*)0));

 ATF_REQUIRE(rump_sys_mkdir("/mnt", 0777) == 0);

 for (i = 0; i < ITERATIONS; i++) {
  tests_makegarbage(&kargs, sizeof(kargs));
  fixup(nfix, &kargs);
  if (rump_sys_mount(MOUNT_PUFFS, "/mnt", 0,
      &kargs, sizeof(kargs)) == 0) {
   struct stat sb;

   pthread_mutex_lock(&damtx);
   dafd = kargs.pa_fd;
   pthread_cond_signal(&dacv);
   pthread_mutex_unlock(&damtx);

   rump_sys_stat("/mnt", &sb);
   rump_sys_unmount("/mnt", MNT_FORCE);
  }
  unfixup(nfix, &kargs);

  pthread_mutex_lock(&damtx);
  dafd = -1;
  pthread_mutex_unlock(&damtx);
 }
}
