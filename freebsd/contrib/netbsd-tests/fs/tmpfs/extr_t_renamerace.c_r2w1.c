
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 int atf_tc_fail_errno (char*) ;
 int quittingtime ;
 int rump_pub_lwproc_newlwp (int ) ;
 int rump_sys_close (int) ;
 int rump_sys_open (char*,int,int) ;
 int rump_sys_rename (char*,char*) ;
 int wrkpid ;

__attribute__((used)) static void *
r2w1(void *arg)
{
 int fd;

 rump_pub_lwproc_newlwp(wrkpid);

 fd = rump_sys_open("/file", O_CREAT | O_RDWR, 0777);
 if (fd == -1)
  atf_tc_fail_errno("creat");
 rump_sys_close(fd);

 while (!quittingtime) {
  if (rump_sys_rename("/file", "/dir/file") == -1)
   atf_tc_fail_errno("rename 1");
  if (rump_sys_rename("/dir/file", "/file") == -1)
   atf_tc_fail_errno("rename 2");
 }

 return ((void*)0);
}
