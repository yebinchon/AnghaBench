
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISC_R_DISABLED ;
 scalar_t__ ISC_R_SUCCESS ;
 int initialize () ;
 scalar_t__ ipv6_result ;

void
isc_net_enableipv6(void) {
 initialize();
 if (ipv6_result == ISC_R_DISABLED)
  ipv6_result = ISC_R_SUCCESS;
}
