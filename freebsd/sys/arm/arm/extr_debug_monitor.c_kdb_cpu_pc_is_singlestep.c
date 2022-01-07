
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_addr_t ;
typedef int boolean_t ;


 int DBG_TYPE_BREAKPOINT ;
 int FALSE ;
 int TRUE ;
 int dbg_capable () ;
 unsigned int dbg_find_slot (int ,int ) ;

boolean_t
kdb_cpu_pc_is_singlestep(db_addr_t pc)
{





 if (!dbg_capable())
  return (FALSE);

 if (dbg_find_slot(DBG_TYPE_BREAKPOINT, pc) != ~0U)
  return (TRUE);

 return (FALSE);
}
