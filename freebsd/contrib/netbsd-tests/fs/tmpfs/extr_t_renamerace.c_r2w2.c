
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int quittingtime ;
 int rump_pub_lwproc_newlwp (int ) ;
 int rump_sys_close (int) ;
 int rump_sys_open (char*,int ) ;
 int wrkpid ;

__attribute__((used)) static void *
r2w2(void *arg)
{
 int fd;

 rump_pub_lwproc_newlwp(wrkpid);

 while (!quittingtime) {
  fd = rump_sys_open("/dir/file1", O_RDWR);
  if (fd != -1)
   rump_sys_close(fd);
 }

 return ((void*)0);
}
