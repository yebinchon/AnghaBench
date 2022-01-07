
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ db_expr_t ;


 scalar_t__ db_expression (scalar_t__*) ;
 int db_map_addr (scalar_t__) ;
 int db_set_watchpoint (int ,scalar_t__,int) ;
 int db_skip_to_eol () ;

void
db_watchpoint_cmd(db_expr_t addr, bool have_addr, db_expr_t count,
   char *modif)
{
 vm_size_t size;
 db_expr_t value;

 if (db_expression(&value))
     size = (vm_size_t) value;
 else
     size = 4;
 db_skip_to_eol();

 db_set_watchpoint(db_map_addr(addr), addr, size);
}
