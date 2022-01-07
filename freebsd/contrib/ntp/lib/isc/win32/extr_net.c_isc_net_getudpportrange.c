
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int in_port_t ;


 int ISC_NET_PORTRANGEHIGH ;
 int ISC_NET_PORTRANGELOW ;
 int ISC_R_FAILURE ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int UNUSED (int) ;

isc_result_t
isc_net_getudpportrange(int af, in_port_t *low, in_port_t *high) {
 int result = ISC_R_FAILURE;

 REQUIRE(low != ((void*)0) && high != ((void*)0));

 UNUSED(af);

 if (result != ISC_R_SUCCESS) {
  *low = ISC_NET_PORTRANGELOW;
  *high = ISC_NET_PORTRANGEHIGH;
 }

 return (ISC_R_SUCCESS);
}
