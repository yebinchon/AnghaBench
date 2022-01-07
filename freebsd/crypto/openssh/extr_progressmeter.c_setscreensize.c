
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {scalar_t__ ws_col; } ;


 scalar_t__ DEFAULT_WINSIZE ;
 scalar_t__ MAX_WINSIZE ;
 int STDOUT_FILENO ;
 int TIOCGWINSZ ;
 int ioctl (int ,int ,struct winsize*) ;
 scalar_t__ win_size ;

__attribute__((used)) static void
setscreensize(void)
{
 struct winsize winsize;

 if (ioctl(STDOUT_FILENO, TIOCGWINSZ, &winsize) != -1 &&
     winsize.ws_col != 0) {
  if (winsize.ws_col > MAX_WINSIZE)
   win_size = MAX_WINSIZE;
  else
   win_size = winsize.ws_col;
 } else
  win_size = DEFAULT_WINSIZE;
 win_size += 1;
}
