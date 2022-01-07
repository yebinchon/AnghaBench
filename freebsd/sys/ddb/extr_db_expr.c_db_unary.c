
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;
typedef int db_addr_t ;


 int db_error (int *) ;
 int db_get_value (int ,int,int) ;
 int db_printf (char*,char) ;
 int db_read_token () ;
 int db_term (int*) ;
 int db_unread_token (int) ;
 int tBIT_NOT ;
 int tEXCL ;
 int tMINUS ;
 int tSTAR ;

__attribute__((used)) static bool
db_unary(db_expr_t *valuep)
{
 int t;

 t = db_read_token();
 if (t == tMINUS) {
     if (!db_unary(valuep)) {
  db_printf("Expression syntax error after '%c'\n", '-');
  db_error(((void*)0));

     }
     *valuep = -*valuep;
     return (1);
 }
 if (t == tEXCL) {
     if(!db_unary(valuep)) {
  db_printf("Expression syntax error after '%c'\n", '!');
  db_error(((void*)0));

     }
     *valuep = (!(*valuep));
     return (1);
 }
 if (t == tBIT_NOT) {
     if(!db_unary(valuep)) {
  db_printf("Expression syntax error after '%c'\n", '~');
  db_error(((void*)0));

     }
     *valuep = (~(*valuep));
     return (1);
 }
 if (t == tSTAR) {

     if (!db_unary(valuep)) {
  db_printf("Expression syntax error after '%c'\n", '*');
  db_error(((void*)0));

     }
     *valuep = db_get_value((db_addr_t)*valuep, sizeof(void *),
  0);
     return (1);
 }
 db_unread_token(t);
 return (db_term(valuep));
}
