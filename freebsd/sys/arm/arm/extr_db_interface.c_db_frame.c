
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_variable {scalar_t__ valuep; } ;
typedef int db_expr_t ;


 int DB_VAR_GET ;
 int * kdb_frame ;

int db_frame(struct db_variable *vp, db_expr_t *valp, int rw)
{
 int *reg;

 if (kdb_frame == ((void*)0))
  return (0);

 reg = (int *)((uintptr_t)kdb_frame + (db_expr_t)vp->valuep);
 if (rw == DB_VAR_GET)
  *valp = *reg;
 else
  *reg = *valp;
 return (1);
}
