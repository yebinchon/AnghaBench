
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DBGSCR_MDBG_EN ;
 int ENXIO ;




 int cp14_dbgdscr_v6_set (int) ;
 int cp14_dbgdscr_v7_set (int) ;
 int cp14_dbgdscrint_get () ;
 int dbg_model ;
 scalar_t__ dbg_monitor_is_enabled () ;
 int isb () ;

__attribute__((used)) static int
dbg_enable_monitor(void)
{
 uint32_t dbg_dscr;


 if (dbg_monitor_is_enabled())
  return (0);

 dbg_dscr = cp14_dbgdscrint_get();

 switch (dbg_model) {
 case 131:
 case 130:
  cp14_dbgdscr_v6_set(dbg_dscr | DBGSCR_MDBG_EN);
  break;
 case 129:
 case 128:
  cp14_dbgdscr_v7_set(dbg_dscr | DBGSCR_MDBG_EN);
  break;
 default:
  break;
 }
 isb();


 if (dbg_monitor_is_enabled())
  return (0);

 return (ENXIO);
}
