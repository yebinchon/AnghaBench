
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int midr_mask; int midr_value; int (* quirk_install ) () ;} ;


 TYPE_1__* cpu_quirks ;
 int get_midr () ;
 size_t nitems (TYPE_1__*) ;
 int stub1 () ;

void
install_cpu_errata(void)
{
 u_int midr;
 size_t i;

 midr = get_midr();

 for (i = 0; i < nitems(cpu_quirks); i++) {
  if ((midr & cpu_quirks[i].midr_mask) ==
      cpu_quirks[i].midr_value) {
   cpu_quirks[i].quirk_install();
  }
 }
}
