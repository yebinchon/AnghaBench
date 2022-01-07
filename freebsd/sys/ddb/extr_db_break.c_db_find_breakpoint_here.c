
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_breakpoint_t ;
typedef int db_addr_t ;


 int db_find_breakpoint (int ,int ) ;
 int db_map_addr (int ) ;

db_breakpoint_t
db_find_breakpoint_here(db_addr_t addr)
{
 return db_find_breakpoint(db_map_addr(addr), addr);
}
