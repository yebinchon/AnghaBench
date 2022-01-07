
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;


 int TIOCGETA ;
 int _ioctl (int,int ,struct termios*) ;

int
tcgetattr(int fd, struct termios *t)
{

 return (_ioctl(fd, TIOCGETA, t));
}
