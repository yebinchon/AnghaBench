
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int db_error (char*) ;
 int db_read_token () ;
 int db_script_exec (int ,int) ;
 int db_tok_string ;
 int tEOL ;
 int tIDENT ;

void
db_run_cmd(db_expr_t addr, bool have_addr, db_expr_t count, char *modif)
{
 int t;





 t = db_read_token();
 if (t != tIDENT)
  db_error("?\n");

 if (db_read_token() != tEOL)
  db_error("?\n");

 db_script_exec(db_tok_string, 1);
}
