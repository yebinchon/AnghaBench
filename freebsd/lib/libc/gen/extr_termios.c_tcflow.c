
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct termios {int * c_cc; } ;
typedef int c ;


 int EINVAL ;




 int TIOCSTART ;
 int TIOCSTOP ;
 size_t VSTART ;
 size_t VSTOP ;
 int _POSIX_VDISABLE ;
 int _ioctl (int,int ,int ) ;
 int _write (int,int *,int) ;
 int errno ;
 int tcgetattr (int,struct termios*) ;

int
tcflow(int fd, int action)
{
 struct termios term;
 u_char c;

 switch (action) {
 case 129:
  return (_ioctl(fd, TIOCSTOP, 0));
 case 128:
  return (_ioctl(fd, TIOCSTART, 0));
 case 130:
 case 131:
  if (tcgetattr(fd, &term) == -1)
   return (-1);
  c = term.c_cc[action == 131 ? VSTOP : VSTART];
  if (c != _POSIX_VDISABLE && _write(fd, &c, sizeof(c)) == -1)
   return (-1);
  return (0);
 default:
  errno = EINVAL;
  return (-1);
 }

}
