
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int DBGSCR_MDBG_EN ;
 int cp14_dbgdscrint_get () ;

__attribute__((used)) static __inline boolean_t
dbg_monitor_is_enabled(void)
{

 return ((cp14_dbgdscrint_get() & DBGSCR_MDBG_EN) != 0);
}
