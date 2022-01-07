
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int __unreachable () ;
 int db_error (int *) ;
 int db_mult_expr (int *) ;
 int db_printf (char*,char) ;
 int db_read_token () ;
 int db_unread_token (int) ;




__attribute__((used)) static bool
db_add_expr(db_expr_t *valuep)
{
 db_expr_t lhs, rhs;
 int t;

 if (!db_mult_expr(&lhs))
     return (0);

 t = db_read_token();
 while (t == 128 || t == 129 || t == 130) {
     if (!db_mult_expr(&rhs)) {
  db_printf("Expression syntax error after '%c'\n",
      t == 128 ? '+' : t == 129 ? '-' : '|');
  db_error(((void*)0));

     }
     switch (t) {
     case 128:
  lhs += rhs;
  break;
     case 129:
  lhs -= rhs;
  break;
     case 130:
  lhs |= rhs;
  break;
     default:
  __unreachable();
     }
     t = db_read_token();
 }
 db_unread_token(t);
 *valuep = lhs;
 return (1);
}
