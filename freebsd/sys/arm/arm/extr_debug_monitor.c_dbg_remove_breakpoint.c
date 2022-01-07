
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct dbg_wb_conf {int type; int slot; } ;


 int DBG_TYPE_BREAKPOINT ;
 scalar_t__ dbg_check_slot_free (int ,int ) ;
 int dbg_remove_xpoint (struct dbg_wb_conf*) ;

__attribute__((used)) static int
dbg_remove_breakpoint(u_int slot)
{
 struct dbg_wb_conf conf;


 if (dbg_check_slot_free(DBG_TYPE_BREAKPOINT, slot))
  return (0);

 conf.slot = slot;
 conf.type = DBG_TYPE_BREAKPOINT;

 return (dbg_remove_xpoint(&conf));
}
