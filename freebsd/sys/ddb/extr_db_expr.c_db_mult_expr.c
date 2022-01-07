
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int db_error (char*) ;
 int db_printf (char*,char) ;
 int db_read_token () ;
 int db_term (int *) ;
 int db_unary (int *) ;
 int db_unread_token (int) ;
 int roundup (int ,int ) ;

 int tHASH ;
 int tPCT ;
 int tSLASH ;


__attribute__((used)) static bool
db_mult_expr(db_expr_t *valuep)
{
 db_expr_t lhs, rhs;
 int t;

 if (!db_unary(&lhs))
     return (0);

 t = db_read_token();
 while (t == 128 || t == tSLASH || t == tPCT || t == tHASH ||
     t == 129 ) {
     if (!db_term(&rhs)) {
  db_printf("Expression syntax error after '%c'\n",
      t == 128 ? '*' : t == tSLASH ? '/' : t == tPCT ? '%' :
      t == tHASH ? '#' : '&');
  db_error(((void*)0));

     }
     switch(t) {
  case 128:
      lhs *= rhs;
      break;
  case 129:
      lhs &= rhs;
      break;
  default:
      if (rhs == 0) {
   db_error("Division by 0\n");

      }
      if (t == tSLASH)
   lhs /= rhs;
      else if (t == tPCT)
   lhs %= rhs;
      else
   lhs = roundup(lhs, rhs);
     }
     t = db_read_token();
 }
 db_unread_token(t);
 *valuep = lhs;
 return (1);
}
