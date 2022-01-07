
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIOCGFLUSH ;
 int g_ioctl (int,int ) ;

int
g_flush(int fd)
{

 return (g_ioctl(fd, DIOCGFLUSH));
}
