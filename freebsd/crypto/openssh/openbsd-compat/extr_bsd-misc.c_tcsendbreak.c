
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;


 int TIOCCBRK ;
 int TIOCSBRK ;
 int ioctl (int,int ,int ) ;
 int select (int ,int ,int ,int ,struct timeval*) ;

int
tcsendbreak(int fd, int duration)
{
 return -1;

}
