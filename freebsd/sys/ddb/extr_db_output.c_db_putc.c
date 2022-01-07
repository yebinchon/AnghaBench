
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NEXT_TAB (scalar_t__) ;
 int cnputc (int) ;
 int db_capture_writech (int) ;
 int db_check_interrupt () ;
 int db_force_whitespace () ;
 scalar_t__ db_last_non_space ;
 scalar_t__ db_maxlines ;
 scalar_t__ db_newlines ;
 scalar_t__ db_output_position ;
 int db_pager () ;
 scalar_t__ ddb_use_printf ;
 int kdb_active ;
 int printf (char*,int) ;

__attribute__((used)) static void
db_putc(int c)
{





 if (!kdb_active || ddb_use_printf) {
  printf("%c", c);
  if (!kdb_active)
   return;
  if (c == '\r' || c == '\n')
   db_check_interrupt();
  if (c == '\n' && db_maxlines > 0) {
   db_newlines++;
   if (db_newlines >= db_maxlines)
    db_pager();
  }
  return;
 }


 if (c > ' ' && c <= '~') {





     db_force_whitespace();
     cnputc(c);
     db_capture_writech(c);
     db_output_position++;
     db_last_non_space = db_output_position;
 }
 else if (c == '\n') {

     cnputc(c);
     db_capture_writech(c);
     db_output_position = 0;
     db_last_non_space = 0;
     db_check_interrupt();
     if (db_maxlines > 0) {
      db_newlines++;
      if (db_newlines >= db_maxlines)
       db_pager();
     }
 }
 else if (c == '\r') {

     cnputc(c);
     db_capture_writech(c);
     db_output_position = 0;
     db_last_non_space = 0;
     db_check_interrupt();
 }
 else if (c == '\t') {

     db_output_position = NEXT_TAB(db_output_position);
 }
 else if (c == ' ') {

     db_output_position++;
 }
 else if (c == '\007') {

     cnputc(c);

 }

}
