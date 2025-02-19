
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int atf_tc_fail_errno (char*) ;
 scalar_t__ errno ;
 int quittingtime ;
 int rump_pub_lwproc_newlwp (int ) ;
 int rump_sys_close (int) ;
 int rump_sys_open (char*,int,int) ;
 int rump_sys_unlink (char*) ;
 int wrkpid ;

__attribute__((used)) static void *
w1(void *arg)
{
 int fd;

 rump_pub_lwproc_newlwp(wrkpid);

 while (!quittingtime) {
  fd = rump_sys_open("rename.test1",
      O_WRONLY|O_CREAT|O_TRUNC, 0666);
  if (fd == -1 && errno != EEXIST)
   atf_tc_fail_errno("create");
  rump_sys_unlink("rename.test1");
  rump_sys_close(fd);
 }

 return ((void*)0);
}
