
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ db_expr_t ;


 scalar_t__ db_dot ;
 int db_error (int *) ;
 int db_expression (scalar_t__*) ;
 int db_get_variable (scalar_t__*) ;
 scalar_t__ db_last_addr ;
 scalar_t__ db_next ;
 scalar_t__ db_prev ;
 int db_printf (char*,char) ;
 int db_read_token () ;
 scalar_t__ db_tok_number ;
 char db_tok_string ;
 int db_unread_token (int) ;
 int db_value_of_name (char,scalar_t__*) ;
 int db_value_of_name_pcpu (char,scalar_t__*) ;
 int db_value_of_name_vnet (char,scalar_t__*) ;
 int tDITTO ;
 int tDOLLAR ;
 int tDOT ;
 int tDOTDOT ;
 int tIDENT ;
 int tLPAREN ;
 int tNUMBER ;
 int tPLUS ;
 int tRPAREN ;

__attribute__((used)) static bool
db_term(db_expr_t *valuep)
{
 int t;

 t = db_read_token();
 if (t == tIDENT) {
     if (!db_value_of_name(db_tok_string, valuep) &&
  !db_value_of_name_pcpu(db_tok_string, valuep) &&
  !db_value_of_name_vnet(db_tok_string, valuep)) {
  db_printf("Symbol '%s' not found\n", db_tok_string);
  db_error(((void*)0));

     }
     return (1);
 }
 if (t == tNUMBER) {
     *valuep = (db_expr_t)db_tok_number;
     return (1);
 }
 if (t == tDOT) {
     *valuep = (db_expr_t)db_dot;
     return (1);
 }
 if (t == tDOTDOT) {
     *valuep = (db_expr_t)db_prev;
     return (1);
 }
 if (t == tPLUS) {
     *valuep = (db_expr_t) db_next;
     return (1);
 }
 if (t == tDITTO) {
     *valuep = (db_expr_t)db_last_addr;
     return (1);
 }
 if (t == tDOLLAR) {
     if (!db_get_variable(valuep))
  return (0);
     return (1);
 }
 if (t == tLPAREN) {
     if (!db_expression(valuep)) {
  db_printf("Expression syntax error after '%c'\n", '(');
  db_error(((void*)0));

     }
     t = db_read_token();
     if (t != tRPAREN) {
  db_printf("Expression syntax error -- expected '%c'\n", ')');
  db_error(((void*)0));

     }
     return (1);
 }
 db_unread_token(t);
 return (0);
}
