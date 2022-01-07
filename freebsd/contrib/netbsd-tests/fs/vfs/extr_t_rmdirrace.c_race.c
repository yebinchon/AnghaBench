
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int atf_tc_t ;


 scalar_t__ FSTYPE_SYSVBFS (int const*) ;
 int O_RDONLY ;
 int atf_tc_fail (char*) ;
 int atf_tc_skip (char*) ;
 int func1 ;
 int func2 ;
 int pthread_create (int *,int *,int ,int*) ;
 int pthread_join (int ,int *) ;
 int rump_sys_chdir (char const*) ;
 int rump_sys_fchdir (int) ;
 int rump_sys_open (char*,int ,int) ;
 int sleep (int) ;

__attribute__((used)) static void
race(const atf_tc_t *tc, const char *path)
{
 int res, fd, quit;
 pthread_t th1, th2;

 if (FSTYPE_SYSVBFS(tc))
  atf_tc_skip("directories not supported by file system");

 fd = rump_sys_open(".", O_RDONLY, 0666);
 if (fd == -1)
  atf_tc_fail("open failed");
 res = rump_sys_chdir(path);
 if (res == -1)
  atf_tc_fail("chdir failed");

 quit = 0;

 res = pthread_create(&th1, ((void*)0), func1, &quit);
 if (res != 0)
  atf_tc_fail("pthread_create1 failed");
 res = pthread_create(&th2, ((void*)0), func2, &quit);
 if (res != 0)
  atf_tc_fail("pthread_create2 failed");

 sleep(10);

 quit = 1;

 res = pthread_join(th2, ((void*)0));
 if (res != 0)
  atf_tc_fail("pthread_join2 failed");
 res = pthread_join(th1, ((void*)0));
 if (res != 0)
  atf_tc_fail("pthread_join1 failed");

 res = rump_sys_fchdir(fd);
 if (res == -1)
  atf_tc_fail("fchdir failed");
}
