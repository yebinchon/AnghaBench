
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fiodgname_arg {char* buf; int len; } ;


 int FIODGNAME ;
 int _ioctl (int,int ,struct fiodgname_arg*) ;

char *
fdevname_r(int fd, char *buf, int len)
{
 struct fiodgname_arg fgn;

 fgn.buf = buf;
 fgn.len = len;

 if (_ioctl(fd, FIODGNAME, &fgn) == -1)
  return (((void*)0));
 return (buf);
}
