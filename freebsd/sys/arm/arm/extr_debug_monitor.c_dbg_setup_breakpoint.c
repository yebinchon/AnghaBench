
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct dbg_wb_conf {int slot; int type; int access; void* size; void* address; } ;
typedef void* db_expr_t ;


 int DBG_TYPE_BREAKPOINT ;
 int HW_BREAKPOINT_X ;
 int dbg_setup_xpoint (struct dbg_wb_conf*) ;

__attribute__((used)) static int
dbg_setup_breakpoint(db_expr_t addr, db_expr_t size, u_int slot)
{
 struct dbg_wb_conf conf;

 conf.address = addr;
 conf.size = size;
 conf.access = HW_BREAKPOINT_X;
 conf.type = DBG_TYPE_BREAKPOINT;
 conf.slot = slot;

 return (dbg_setup_xpoint(&conf));
}
