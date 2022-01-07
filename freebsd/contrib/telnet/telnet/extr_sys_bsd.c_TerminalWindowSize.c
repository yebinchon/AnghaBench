
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {long ws_row; long ws_col; } ;


 int TIOCGWINSZ ;
 int fileno (int ) ;
 scalar_t__ ioctl (int ,int ,char*) ;
 int stdin ;

int
TerminalWindowSize(long *rows, long *cols)
{
    return 0;
}
