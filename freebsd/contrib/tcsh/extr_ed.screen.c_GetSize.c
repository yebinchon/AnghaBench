
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_col; int ws_row; } ;
struct ttysize {int ts_cols; int ts_lines; } ;
typedef int ioctl_t ;


 int SHIN ;
 int TIOCGSIZE ;
 int TIOCGWINSZ ;
 int T_co ;
 int T_li ;
 int Val (int ) ;
 int ioctl (int ,int ,int ) ;

int
GetSize(int *lins, int *cols)
{
    *cols = Val(T_co);
    *lins = Val(T_li);
    return (Val(T_co) != *cols || Val(T_li) != *lins);
}
