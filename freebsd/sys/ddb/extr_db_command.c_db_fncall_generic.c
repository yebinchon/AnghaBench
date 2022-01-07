
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ db_expr_t ;
typedef scalar_t__ (* __db_f ) (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;


 int db_printf (char*) ;
 scalar_t__ stub1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static __inline int
db_fncall_generic(db_expr_t addr, db_expr_t *rv, int nargs, db_expr_t args[])
{
 __db_f *f = (__db_f *)addr;

 if (nargs > 10) {
  db_printf("Too many arguments (max 10)\n");
  return (0);
 }
 *rv = (*f)(args[0], args[1], args[2], args[3], args[4], args[5],
     args[6], args[7], args[8], args[9]);
 return (1);
}
