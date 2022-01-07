
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;


 int tcgetattr (int,struct termios*) ;

int
isatty(int fd)
{
 int retval;
 struct termios t;

 retval = (tcgetattr(fd, &t) != -1);
 return(retval);
}
