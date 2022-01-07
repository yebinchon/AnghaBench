
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int DIOCGDELETE ;
 int g_ioctl_arg (int,int ,int *) ;

int
g_delete(int fd, off_t offset, off_t length)
{
 off_t arg[2];

 arg[0] = offset;
 arg[1] = length;
 return (g_ioctl_arg(fd, DIOCGDELETE, arg));
}
