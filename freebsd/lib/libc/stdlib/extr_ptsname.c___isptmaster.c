
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EBADF ;
 scalar_t__ EINVAL ;
 int TIOCPTMASTER ;
 scalar_t__ _ioctl (int,int ) ;
 scalar_t__ errno ;

__attribute__((used)) static int
__isptmaster(int fildes)
{

 if (_ioctl(fildes, TIOCPTMASTER) == 0)
  return (0);

 if (errno != EBADF)
  errno = EINVAL;

 return (-1);
}
