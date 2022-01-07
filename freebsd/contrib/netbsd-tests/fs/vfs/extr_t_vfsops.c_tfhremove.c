
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int ATF_REQUIRE_ERRNO (int ,int) ;
 scalar_t__ E2BIG ;
 scalar_t__ EOPNOTSUPP ;
 int ESTALE ;
 int FNAME ;
 scalar_t__ FSTYPE_LFS (int const*) ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int RL (int) ;
 int atf_tc_expect_fail (char*) ;
 int atf_tc_expect_pass () ;
 int atf_tc_fail_errno (char*) ;
 int atf_tc_skip (char*) ;
 scalar_t__ errno ;
 void* malloc (size_t) ;
 int rump_sys_chdir (char const*) ;
 int rump_sys_close (int) ;
 int rump_sys_fhopen (void*,size_t,int ) ;
 int rump_sys_getfh (int ,void*,size_t*) ;
 int rump_sys_open (int ,int,int) ;
 int rump_sys_unlink (int ) ;

__attribute__((used)) static void
tfhremove(const atf_tc_t *tc, const char *path)
{
 size_t fhsize;
 void *fhp;
 int fd;

 RL(rump_sys_chdir(path));
 RL(fd = rump_sys_open(FNAME, O_RDWR | O_CREAT, 0777));
 RL(rump_sys_close(fd));

 fhsize = 0;
 if (rump_sys_getfh(FNAME, ((void*)0), &fhsize) == -1) {
  if (errno == EOPNOTSUPP) {
   atf_tc_skip("file handles not supported");
  } else if (errno != E2BIG) {
   atf_tc_fail_errno("getfh size");
  }
 }

 fhp = malloc(fhsize);
 RL(rump_sys_getfh(FNAME, fhp, &fhsize));
 RL(rump_sys_unlink(FNAME));

 if (FSTYPE_LFS(tc))
  atf_tc_expect_fail("fhopen() for removed file succeeds "
      "(PR kern/43745)");
 ATF_REQUIRE_ERRNO(ESTALE, rump_sys_fhopen(fhp, fhsize, O_RDONLY) == -1);
 atf_tc_expect_pass();

 RL(rump_sys_chdir("/"));
}
