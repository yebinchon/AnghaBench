
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int __unreachable () ;
 int db_error (int *) ;
 int db_printf (char*,char*) ;
 int db_read_token () ;
 int db_shift_expr (int*) ;
 int db_unread_token (int) ;







__attribute__((used)) static bool
db_logical_relation_expr(
 db_expr_t *valuep)
{
 db_expr_t lhs, rhs;
 int t;

 if (!db_shift_expr(&lhs))
     return (0);

 t = db_read_token();
 while (t == 129 || t == 128 || t == 133 ||
     t == 132 || t == 131 || t == 130) {
     if (!db_shift_expr(&rhs)) {
  db_printf("Expression syntax error after '%s'\n",
      t == 129 ? "==" : t == 128 ? "!=" :
      t == 133 ? ">" : t == 132 ? ">=" :
      t == 131 ? "<" : "<=");
  db_error(((void*)0));

     }
     switch(t) {
  case 129:
      lhs = (lhs == rhs);
      break;
  case 128:
      lhs = (lhs != rhs);
      break;
  case 133:
      lhs = (lhs > rhs);
      break;
  case 132:
      lhs = (lhs >= rhs);
      break;
  case 131:
      lhs = (lhs < rhs);
      break;
  case 130:
      lhs = (lhs <= rhs);
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
