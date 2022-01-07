
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 scalar_t__ E2BIG ;
 scalar_t__ EOPNOTSUPP ;
 int O_RDWR ;
 int RL (int ) ;
 int atf_tc_fail_errno (char*) ;
 int atf_tc_skip (char*) ;
 scalar_t__ errno ;
 void* malloc (size_t) ;
 int printf (char*,unsigned long) ;
 int rump_sys_chdir (char const*) ;
 int rump_sys_close (int) ;
 int rump_sys_fhopen (void*,size_t,int ) ;
 int rump_sys_getfh (char*,int *,size_t*) ;
 int srandom (unsigned long) ;
 int tests_makegarbage (void*,size_t) ;
 unsigned long time (int *) ;

__attribute__((used)) static void
tfhinval(const atf_tc_t *tc, const char *path)
{
 size_t fhsize;
 void *fhp;
 unsigned long seed;
 int fd;

 srandom(seed = time(((void*)0)));
 printf("RNG seed %lu\n", seed);

 RL(rump_sys_chdir(path));
 fhsize = 0;
 if (rump_sys_getfh(".", ((void*)0), &fhsize) == -1) {
  if (errno == EOPNOTSUPP) {
   atf_tc_skip("file handles not supported");
  } else if (errno != E2BIG) {
   atf_tc_fail_errno("getfh size");
  }
 }

 fhp = malloc(fhsize);
 tests_makegarbage(fhp, fhsize);
 fd = rump_sys_fhopen(fhp, fhsize, O_RDWR);
 if (fd != -1)
  rump_sys_close(fd);

 RL(rump_sys_chdir("/"));
}
