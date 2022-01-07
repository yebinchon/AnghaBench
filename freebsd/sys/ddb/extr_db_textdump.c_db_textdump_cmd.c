
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int db_printf (char*) ;
 int db_read_token () ;
 int db_textdump_usage () ;
 int db_tok_string ;
 int doadump (int) ;
 scalar_t__ strcmp (int ,char*) ;
 int tEOL ;
 int tIDENT ;
 int textdump_pending ;

void
db_textdump_cmd(db_expr_t addr, bool have_addr, db_expr_t count, char *modif)
{
 int t;

 t = db_read_token();
 if (t != tIDENT) {
  db_textdump_usage();
  return;
 }
 if (db_read_token() != tEOL) {
  db_textdump_usage();
  return;
 }
 if (strcmp(db_tok_string, "set") == 0) {
  textdump_pending = 1;
  db_printf("textdump set\n");
 } else if (strcmp(db_tok_string, "status") == 0) {
  if (textdump_pending)
   db_printf("textdump is set\n");
  else
   db_printf("textdump is not set\n");
 } else if (strcmp(db_tok_string, "unset") == 0) {
  textdump_pending = 0;
  db_printf("textdump unset\n");
 } else if (strcmp(db_tok_string, "dump") == 0) {
  textdump_pending = 1;
  doadump(1);
 } else {
  db_textdump_usage();
 }
}
