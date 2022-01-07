
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_variable {int dummy; } ;
typedef int db_expr_t ;


 int db_find_variable (struct db_variable**) ;
 int db_write_variable (struct db_variable*,int ) ;

int
db_set_variable(db_expr_t value)
{
 struct db_variable *vp;

 if (!db_find_variable(&vp))
  return (0);

 return (db_write_variable(vp, value));
}
