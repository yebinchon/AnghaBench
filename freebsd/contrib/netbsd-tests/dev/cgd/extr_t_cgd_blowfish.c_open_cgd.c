
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 scalar_t__ getrawpartition () ;
 int rump_sys_open (char*,int ,int ) ;
 int sprintf (char*,char*,int,scalar_t__) ;

__attribute__((used)) static int
open_cgd(int devno)
{
 char devpath[32];

 sprintf(devpath, "/dev/rcgd%d%c", devno, getrawpartition() + 'a');

 return rump_sys_open(devpath, O_RDWR, 0);
}
