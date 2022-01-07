
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;
typedef int db_addr_t ;


 int db_map_addr (int) ;
 int db_set_breakpoint (int ,int ,int) ;

void
db_breakpoint_cmd(db_expr_t addr, bool have_addr, db_expr_t count, char *modif)
{
 if (count == -1)
     count = 1;

 db_set_breakpoint(db_map_addr(addr), (db_addr_t)addr, count);
}
