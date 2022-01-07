
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_cflag; } ;


 int CIGNORE ;
 int EINVAL ;



 int TCSASOFT ;
 int TIOCSETA ;
 int TIOCSETAF ;
 int TIOCSETAW ;
 int _ioctl (int,int ,struct termios const*) ;
 int errno ;

int
tcsetattr(int fd, int opt, const struct termios *t)
{
 struct termios localterm;

 if (opt & TCSASOFT) {
  localterm = *t;
  localterm.c_cflag |= CIGNORE;
  t = &localterm;
 }
 switch (opt & ~TCSASOFT) {
 case 128:
  return (_ioctl(fd, TIOCSETA, t));
 case 130:
  return (_ioctl(fd, TIOCSETAW, t));
 case 129:
  return (_ioctl(fd, TIOCSETAF, t));
 default:
  errno = EINVAL;
  return (-1);
 }
}
