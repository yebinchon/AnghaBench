
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {scalar_t__ ws_col; } ;


 int TIOCGWINSZ ;
 int errno ;
 int fileno (int ) ;
 int ioctl (int ,int ,struct winsize*) ;
 int ttyout ;
 int ttywidth ;

void
setttywidth(int a)
{
 struct winsize winsize;
 int oerrno = errno;

 if (ioctl(fileno(ttyout), TIOCGWINSZ, &winsize) != -1 &&
     winsize.ws_col != 0)
  ttywidth = winsize.ws_col;
 else
  ttywidth = 80;
 errno = oerrno;
}
