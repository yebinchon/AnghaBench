
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cngetc () ;
 int cnputc (char) ;
 int db_capture_enterpager () ;
 int db_capture_exitpager () ;
 int db_force_whitespace () ;
 int db_lines_per_page ;
 int db_maxlines ;
 scalar_t__ db_newlines ;
 int db_pager_quit ;
 int db_printf (char*) ;

void
db_pager(void)
{
 int c, done;

 db_capture_enterpager();
 db_printf("--More--\r");
 done = 0;
 while (!done) {
  c = cngetc();
  switch (c) {
  case 'e':
  case 'j':
  case '\n':

   db_maxlines = 1;
   done++;
   break;
  case 'd':

   db_maxlines = db_lines_per_page / 2;
   done++;
   break;
  case 'f':
  case ' ':

   db_maxlines = db_lines_per_page;
   done++;
   break;
  case 'q':
  case 'Q':
  case 'x':
  case 'X':

   db_maxlines = 0;
   db_pager_quit = 1;
   done++;
   break;





  }
 }
 db_printf("        ");
 db_force_whitespace();
 db_printf("\r");
 db_newlines = 0;
 db_capture_exitpager();
}
