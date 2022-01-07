
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int quittingtime ;
 int rump_pub_lwproc_newlwp (int ) ;
 int rump_sys_rename (char*,char*) ;
 int wrkpid ;

__attribute__((used)) static void *
w2(void *arg)
{

 rump_pub_lwproc_newlwp(wrkpid);

 while (!quittingtime) {
  rump_sys_rename("rename.test1", "rename.test2");
 }

 return ((void*)0);
}
