
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* intmax_t ;
typedef int db_expr_t ;
typedef int db_addr_t ;


 int db_add_expr (int*) ;
 int db_error (int *) ;
 int db_printf (char*,char*) ;
 int db_read_token () ;
 int db_unread_token (int) ;
 int tSHIFT_L ;
 int tSHIFT_R ;

__attribute__((used)) static bool
db_shift_expr(db_expr_t *valuep)
{
 db_expr_t lhs, rhs;
 int t;

 if (!db_add_expr(&lhs))
  return (0);
 t = db_read_token();
 while (t == tSHIFT_L || t == tSHIFT_R) {
     if (!db_add_expr(&rhs)) {
  db_printf("Expression syntax error after '%s'\n",
      t == tSHIFT_L ? "<<" : ">>");
  db_error(((void*)0));

     }
     if (rhs < 0) {
  db_printf("Negative shift amount %jd\n", (intmax_t)rhs);
  db_error(((void*)0));

     }
     if (t == tSHIFT_L)
  lhs <<= rhs;
     else {

  lhs = (db_addr_t)lhs >> rhs;
     }
     t = db_read_token();
 }
 db_unread_token(t);
 *valuep = lhs;
 return (1);
}
