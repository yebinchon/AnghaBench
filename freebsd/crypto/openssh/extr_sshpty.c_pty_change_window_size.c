
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
struct winsize {void* ws_ypixel; void* ws_xpixel; void* ws_col; void* ws_row; } ;


 int TIOCSWINSZ ;
 int ioctl (int,int ,struct winsize*) ;

void
pty_change_window_size(int ptyfd, u_int row, u_int col,
 u_int xpixel, u_int ypixel)
{
 struct winsize w;


 w.ws_row = row;
 w.ws_col = col;
 w.ws_xpixel = xpixel;
 w.ws_ypixel = ypixel;
 (void) ioctl(ptyfd, TIOCSWINSZ, &w);
}
