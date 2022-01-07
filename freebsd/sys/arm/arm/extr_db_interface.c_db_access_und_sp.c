
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_variable {int dummy; } ;
typedef int db_expr_t ;


 int DB_VAR_GET ;
 int PSR_UND32_MODE ;
 int get_stackptr (int ) ;

int
db_access_und_sp(struct db_variable *vp, db_expr_t *valp, int rw)
{

 if (rw == DB_VAR_GET) {
  *valp = get_stackptr(PSR_UND32_MODE);
  return (1);
 }
 return (0);
}
