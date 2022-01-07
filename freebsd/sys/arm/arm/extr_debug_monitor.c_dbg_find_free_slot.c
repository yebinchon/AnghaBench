
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int ;
typedef enum dbg_t { ____Placeholder_dbg_t } dbg_t ;




 int db_printf (char*) ;
 unsigned int dbg_breakpoint_num ;
 scalar_t__ dbg_check_slot_free (int,unsigned int) ;
 unsigned int dbg_watchpoint_num ;

__attribute__((used)) static u_int
dbg_find_free_slot(enum dbg_t type)
{
 u_int max, i;

 switch(type) {
 case 129:
  max = dbg_breakpoint_num;
  break;
 case 128:
  max = dbg_watchpoint_num;
  break;
 default:
  db_printf("Unsupported debug type\n");
  return (~0U);
 }

 for (i = 0; i < max; i++) {
  if (dbg_check_slot_free(type, i))
   return (i);
 }

 return (~0U);
}
