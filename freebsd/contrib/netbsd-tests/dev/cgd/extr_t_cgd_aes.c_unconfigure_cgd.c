
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgd_ioctl {int dummy; } ;


 int CGDIOCCLR ;
 int rump_sys_ioctl (int,int ,struct cgd_ioctl*) ;

__attribute__((used)) static int
unconfigure_cgd(int fd)
{
 struct cgd_ioctl ci;

 return rump_sys_ioctl(fd, CGDIOCCLR, &ci);
}
