
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbg_wb_conf {int access; int type; void* size; void* address; } ;
typedef enum dbg_access_t { ____Placeholder_dbg_access_t } dbg_access_t ;
typedef void* db_expr_t ;


 int DBG_TYPE_WATCHPOINT ;
 int EINVAL ;
 int HW_BREAKPOINT_X ;
 int db_printf (char*,int) ;
 int dbg_setup_xpoint (struct dbg_wb_conf*) ;

int
dbg_setup_watchpoint(db_expr_t addr, db_expr_t size, enum dbg_access_t access)
{
 struct dbg_wb_conf conf;

 if (access == HW_BREAKPOINT_X) {
  db_printf("Invalid access type for watchpoint: %d\n", access);
  return (EINVAL);
 }

 conf.address = addr;
 conf.size = size;
 conf.access = access;
 conf.type = DBG_TYPE_WATCHPOINT;

 return (dbg_setup_xpoint(&conf));
}
