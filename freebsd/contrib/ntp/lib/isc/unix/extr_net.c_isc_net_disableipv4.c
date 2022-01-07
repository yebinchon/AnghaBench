
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISC_R_DISABLED ;
 scalar_t__ ISC_R_SUCCESS ;
 int initialize () ;
 scalar_t__ ipv4_result ;

void
isc_net_disableipv4(void) {
 initialize();
 if (ipv4_result == ISC_R_SUCCESS)
  ipv4_result = ISC_R_DISABLED;
}
