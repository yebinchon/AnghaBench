
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ti_type; int ti_state; scalar_t__ ti_startfunc; scalar_t__ ti_pc; int ti_lid; int ti_tid; } ;
typedef TYPE_1__ td_thrinfo_t ;
typedef int td_thrhandle_t ;
typedef int td_err_e ;
struct minimal_symbol {int dummy; } ;


 int DEPRECATED_SYMBOL_NAME (struct minimal_symbol*) ;
 int TD_OK ;





 scalar_t__ TD_THR_SYSTEM ;


 struct minimal_symbol* lookup_minimal_symbol_by_pc (scalar_t__) ;
 int p_td_thr_get_info (int const*,TYPE_1__*) ;
 int paddr (scalar_t__) ;
 int printf_filtered (char*,...) ;
 int warning (char*) ;

__attribute__((used)) static int
info_cb (const td_thrhandle_t *th, void *s)
{
  td_err_e ret;
  td_thrinfo_t ti;

  if ((ret = p_td_thr_get_info (th, &ti)) == TD_OK)
    {
      printf_filtered ("%s thread #%d, lwp %d, ",
         ti.ti_type == TD_THR_SYSTEM ? "system" : "user  ",
         ti.ti_tid, ti.ti_lid);
      switch (ti.ti_state)
 {
 default:
 case 129:
   printf_filtered ("<unknown state>");
   break;
 case 131:
   printf_filtered ("(stopped)");
   break;
 case 133:
   printf_filtered ("(run)    ");
   break;
 case 134:
   printf_filtered ("(active) ");
   break;
 case 128:
   printf_filtered ("(zombie) ");
   break;
 case 132:
   printf_filtered ("(asleep) ");
   break;
 case 130:
   printf_filtered ("(stopped asleep)");
   break;
 }

      if (ti.ti_startfunc != 0)
 {
   struct minimal_symbol *msym;
   msym = lookup_minimal_symbol_by_pc (ti.ti_startfunc);
   if (msym)
     printf_filtered ("   startfunc: %s\n", DEPRECATED_SYMBOL_NAME (msym));
   else
     printf_filtered ("   startfunc: 0x%s\n", paddr (ti.ti_startfunc));
 }


      if (ti.ti_state == 132)
 {
   struct minimal_symbol *msym;
   msym = lookup_minimal_symbol_by_pc (ti.ti_pc);
   if (msym)
     printf_filtered (" - Sleep func: %s\n", DEPRECATED_SYMBOL_NAME (msym));
   else
     printf_filtered (" - Sleep func: 0x%s\n", paddr (ti.ti_startfunc));
 }


      if (ti.ti_state != 132 && ti.ti_startfunc == 0)
 printf_filtered ("\n");
    }
  else
    warning ("info sol-thread: failed to get info for thread.");

  return 0;
}
