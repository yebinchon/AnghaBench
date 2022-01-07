
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDIN_FILENO ;
 scalar_t__ get_window_size (int ,int*,int*) ;

int
TerminalWindowSize(long *rows, long *cols)
{
    int irows, icols;

    if (get_window_size(STDIN_FILENO, &irows, &icols) == 0) {
 *rows = irows;
 *cols = icols;
 return 1;
    } else
 return 0;
}
