
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int ENOENT ;
 int db_printf (char*,...) ;
 int db_read_token () ;
 int db_script_unset (int ) ;
 int db_skip_to_eol () ;
 int db_tok_string ;
 int tIDENT ;

void
db_unscript_cmd(db_expr_t addr, bool have_addr, db_expr_t count,
    char *modif)
{
 int error, t;

 t = db_read_token();
 if (t != tIDENT) {
  db_printf("?\n");
  db_skip_to_eol();
  return;
 }

 error = db_script_unset(db_tok_string);
 if (error == ENOENT) {
  db_printf("script '%s' not found\n", db_tok_string);
  db_skip_to_eol();
  return;
 }
 db_skip_to_eol();
}
