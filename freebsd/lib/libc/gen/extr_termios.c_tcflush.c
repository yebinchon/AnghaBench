
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int FREAD ;
 int FWRITE ;



 int TIOCFLUSH ;
 int _ioctl (int,int ,int*) ;
 int errno ;

int
tcflush(int fd, int which)
{
 int com;

 switch (which) {
 case 130:
  com = FREAD;
  break;
 case 128:
  com = FWRITE;
  break;
 case 129:
  com = FREAD | FWRITE;
  break;
 default:
  errno = EINVAL;
  return (-1);
 }
 return (_ioctl(fd, TIOCFLUSH, &com));
}
