
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;
typedef int db_addr_t ;


 int db_expression (int*) ;
 int db_flush_lex () ;
 int db_printf (char*) ;
 int db_read_token () ;
 int db_search (int ,int,int,int,int) ;
 int db_skip_to_eol () ;
 int db_tok_string ;
 int db_unread_token (int) ;
 int strcmp (int ,char*) ;
 int tCOMMA ;
 int tIDENT ;
 int tSLASH ;

void
db_search_cmd(db_expr_t dummy1, bool dummy2, db_expr_t dummy3, char *dummy4)
{
 int t;
 db_addr_t addr;
 int size;
 db_expr_t value;
 db_expr_t mask;
 db_expr_t count;

 t = db_read_token();
 if (t == tSLASH) {
     t = db_read_token();
     if (t != tIDENT) {
       bad_modifier:
  db_printf("Bad modifier\n");
  db_flush_lex();
  return;
     }

     if (!strcmp(db_tok_string, "b"))
  size = 1;
     else if (!strcmp(db_tok_string, "h"))
  size = 2;
     else if (!strcmp(db_tok_string, "l"))
  size = 4;
     else
  goto bad_modifier;
 } else {
     db_unread_token(t);
     size = 4;
 }

 if (!db_expression((db_expr_t *)&addr)) {
     db_printf("Address missing\n");
     db_flush_lex();
     return;
 }

 if (!db_expression(&value)) {
     db_printf("Value missing\n");
     db_flush_lex();
     return;
 }

 if (!db_expression(&mask))
     mask = 0xffffffffUL;

 t = db_read_token();
 if (t == tCOMMA) {
     if (!db_expression(&count)) {
  db_printf("Count missing\n");
  db_flush_lex();
  return;
     }
 } else {
     db_unread_token(t);
     count = -1;
 }
 db_skip_to_eol();

 db_search(addr, size, value, mask, count);
}
