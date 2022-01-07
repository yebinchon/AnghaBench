
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ipf_running; scalar_t__ ipf_refcnt; } ;


 int IS_DEFAULT_VNET (int ) ;
 TYPE_1__ V_ipfmain ;
 int curvnet ;
 int ipf_destroy_all (TYPE_1__*) ;
 int ipf_event_dereg () ;
 int ipf_pfil_unhook () ;
 scalar_t__ ipfdetach (TYPE_1__*) ;

__attribute__((used)) static void
vnet_ipf_uninit(void)
{

 if (V_ipfmain.ipf_refcnt)
  return;

 if (V_ipfmain.ipf_running >= 0) {

  if (ipfdetach(&V_ipfmain) != 0)
   return;

  V_ipfmain.ipf_running = -2;

  ipf_destroy_all(&V_ipfmain);
  if (!IS_DEFAULT_VNET(curvnet)) {
   ipf_event_dereg();
   (void)ipf_pfil_unhook();
  }
 }
}
