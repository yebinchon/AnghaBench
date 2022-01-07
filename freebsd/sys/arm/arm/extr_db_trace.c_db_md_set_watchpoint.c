
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int HW_WATCHPOINT_RW ;
 int dbg_setup_watchpoint (int ,int ,int ) ;

int
db_md_set_watchpoint(db_expr_t addr, db_expr_t size)
{

 return (dbg_setup_watchpoint(addr, size, HW_WATCHPOINT_RW));
}
