
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;


 int initialize () ;
 int ipv6_result ;

isc_result_t
isc_net_probeipv6(void) {
 initialize();
 return (ipv6_result);
}
