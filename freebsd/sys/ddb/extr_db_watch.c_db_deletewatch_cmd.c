
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int db_delete_watchpoint (int ,int ) ;
 int db_map_addr (int ) ;

void
db_deletewatch_cmd(db_expr_t addr, bool have_addr, db_expr_t count,
   char *modif)
{
 db_delete_watchpoint(db_map_addr(addr), addr);
}
