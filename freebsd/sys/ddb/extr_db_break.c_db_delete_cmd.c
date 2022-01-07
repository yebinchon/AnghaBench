
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ db_expr_t ;
typedef int db_addr_t ;


 int db_delete_breakpoint (int ,int ) ;
 int db_map_addr (scalar_t__) ;

void
db_delete_cmd(db_expr_t addr, bool have_addr, db_expr_t count, char *modif)
{
 db_delete_breakpoint(db_map_addr(addr), (db_addr_t)addr);
}
