
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_variable {int dummy; } ;
typedef int db_expr_t ;




 int db_cpu ;
 int db_printf (char*,...) ;
 int mp_maxid ;

int
db_var_db_cpu(struct db_variable *vp, db_expr_t *valuep, int op)
{

 switch (op) {
 case 129:
  *valuep = db_cpu;
  return (1);

 case 128:
  if (*(int *)valuep < -1 || *(int *)valuep > mp_maxid) {
   db_printf("Invalid value: %d\n", *(int*)valuep);
   return (0);
  }
  db_cpu = *(int *)valuep;
  return (1);

 default:
  db_printf("db_var_db_cpu: unknown operation\n");
  return (0);
 }
}
