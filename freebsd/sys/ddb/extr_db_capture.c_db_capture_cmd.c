
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int db_capture_bufoff ;
 int db_capture_bufsize ;
 scalar_t__ db_capture_inprogress ;
 int db_capture_reset () ;
 int db_capture_start () ;
 int db_capture_stop () ;
 int db_capture_usage () ;
 int db_error (char*) ;
 int db_printf (char*,...) ;
 int db_read_token () ;
 int db_tok_string ;
 scalar_t__ strcmp (int ,char*) ;
 int tEOL ;
 int tIDENT ;

void
db_capture_cmd(db_expr_t addr, bool have_addr, db_expr_t count, char *modif)
{
 int t;

 t = db_read_token();
 if (t != tIDENT) {
  db_capture_usage();
  return;
 }
 if (db_read_token() != tEOL)
  db_error("?\n");
 if (strcmp(db_tok_string, "on") == 0)
  db_capture_start();
 else if (strcmp(db_tok_string, "off") == 0)
  db_capture_stop();
 else if (strcmp(db_tok_string, "reset") == 0)
  db_capture_reset();
 else if (strcmp(db_tok_string, "status") == 0) {
  db_printf("%u/%u bytes used\n", db_capture_bufoff,
      db_capture_bufsize);
  if (db_capture_inprogress)
   db_printf("capture is on\n");
  else
   db_printf("capture is off\n");
 } else
  db_capture_usage();
}
