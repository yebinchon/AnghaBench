
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct db_variable {scalar_t__ valuep; } ;
typedef scalar_t__ db_expr_t ;


 int DB_VAR_GET ;
 int * kdb_frame ;

__attribute__((used)) static int
db_frame_seg(struct db_variable *vp, db_expr_t *valuep, int op)
{
 uint16_t *reg;

 if (kdb_frame == ((void*)0))
  return (0);

 reg = (uint16_t *)((uintptr_t)kdb_frame + (db_expr_t)vp->valuep);
 if (op == DB_VAR_GET)
  *valuep = *reg;
 else
  *reg = *valuep;
 return (1);
}
