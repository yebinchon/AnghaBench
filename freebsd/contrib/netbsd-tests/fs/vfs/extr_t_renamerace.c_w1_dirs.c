
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atf_tc_fail_errno (char*) ;
 int quittingtime ;
 int rump_pub_lwproc_newlwp (int ) ;
 int rump_sys_mkdir (char*,int) ;
 int rump_sys_rmdir (char*) ;
 int wrkpid ;

__attribute__((used)) static void *
w1_dirs(void *arg)
{

 rump_pub_lwproc_newlwp(wrkpid);

 while (!quittingtime) {
  if (rump_sys_mkdir("rename.test1", 0777) == -1)
   atf_tc_fail_errno("mkdir");
  rump_sys_rmdir("rename.test1");
 }

 return ((void*)0);
}
