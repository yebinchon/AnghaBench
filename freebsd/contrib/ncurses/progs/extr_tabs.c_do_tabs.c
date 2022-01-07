
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int max_cols ;
 int putch ;
 int putchar (char) ;
 int set_tab ;
 int tparm (int ,int) ;
 int tputs (int ,int,int ) ;

__attribute__((used)) static void
do_tabs(int *tab_list)
{
    int last = 1;
    int stop;

    putchar('\r');
    while ((stop = *tab_list++) > 0) {
 if (last < stop) {
     while (last++ < stop) {
  if (last > max_cols)
      break;
  putchar(' ');
     }
 }
 if (stop <= max_cols) {
     tputs(tparm(set_tab, stop), 1, putch);
     last = stop;
 } else {
     break;
 }
    }
    putchar('\n');
}
