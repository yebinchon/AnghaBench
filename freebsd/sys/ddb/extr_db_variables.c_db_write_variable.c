
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_variable {int (* fcn ) (struct db_variable*,int *,int ) ;int * valuep; } ;
typedef int (* db_varfcn_t ) (struct db_variable*,int *,int ) ;
typedef int db_expr_t ;


 int DB_VAR_SET ;
 int FCN_NULL (struct db_variable*,int *,int ) ;
 int stub1 (struct db_variable*,int *,int ) ;

int
db_write_variable(struct db_variable *vp, db_expr_t value)
{
 db_varfcn_t *func = vp->fcn;

 if (func == FCN_NULL) {
  *(vp->valuep) = value;
  return (1);
 }
 return ((*func)(vp, &value, DB_VAR_SET));
}
