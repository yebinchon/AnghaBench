
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NEXT_TAB (int) ;
 int cnputc (char) ;
 int db_capture_writech (char) ;
 int db_last_non_space ;
 int db_output_position ;

void
db_force_whitespace(void)
{
 int last_print, next_tab;

 last_print = db_last_non_space;
 while (last_print < db_output_position) {
     next_tab = NEXT_TAB(last_print);
     if (next_tab <= db_output_position) {
  while (last_print < next_tab) {
   cnputc(' ');
   db_capture_writech(' ');
   last_print++;
  }
     }
     else {
  cnputc(' ');
  db_capture_writech(' ');
  last_print++;
     }
 }
 db_last_non_space = db_output_position;
}
