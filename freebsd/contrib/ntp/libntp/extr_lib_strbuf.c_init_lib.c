
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISC_R_SUCCESS ;
 scalar_t__ TRUE ;
 int init_systime () ;
 int ipv4_works ;
 int ipv6_works ;
 scalar_t__ isc_net_probeipv4 () ;
 scalar_t__ isc_net_probeipv6 () ;
 scalar_t__ lib_inited ;

void
init_lib(void)
{
 if (lib_inited)
  return;
 ipv4_works = (ISC_R_SUCCESS == isc_net_probeipv4());
 ipv6_works = (ISC_R_SUCCESS == isc_net_probeipv6());
 init_systime();
 lib_inited = TRUE;
}
