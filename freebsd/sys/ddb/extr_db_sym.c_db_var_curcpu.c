
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_variable {int dummy; } ;
typedef int db_expr_t ;




 int curcpu ;
 int db_printf (char*) ;

int
db_var_curcpu(struct db_variable *vp, db_expr_t *valuep, int op)
{

 switch (op) {
 case 129:
  *valuep = curcpu;
  return (1);

 case 128:
  db_printf("Read-only variable.\n");
  return (0);

 default:
  db_printf("db_var_curcpu: unknown operation\n");
  return (0);
 }
}
