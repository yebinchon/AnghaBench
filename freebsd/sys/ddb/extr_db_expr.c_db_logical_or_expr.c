
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int db_error (int *) ;
 int db_logical_and_expr (int*) ;
 int db_printf (char*,char*) ;
 int db_read_token () ;
 int db_unread_token (int) ;
 int tLOG_OR ;

__attribute__((used)) static bool
db_logical_or_expr(
 db_expr_t *valuep)
{
 db_expr_t lhs, rhs;
 int t;

 if (!db_logical_and_expr(&lhs))
  return(0);

 t = db_read_token();
 while (t == tLOG_OR) {
  if (!db_logical_and_expr(&rhs)) {
   db_printf("Expression syntax error after '%s'\n", "||");
   db_error(((void*)0));

  }
  lhs = (lhs || rhs);
  t = db_read_token();
 }
 db_unread_token(t);
 *valuep = lhs;
 return (1);
}
