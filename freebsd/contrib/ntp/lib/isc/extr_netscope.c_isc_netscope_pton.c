
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
typedef int isc_uint64_t ;
typedef int isc_uint32_t ;
typedef int isc_result_t ;


 int AF_INET6 ;
 scalar_t__ IN6_IS_ADDR_LINKLOCAL (struct in6_addr*) ;
 int ISC_R_FAILURE ;
 int ISC_R_SUCCESS ;
 unsigned int if_nametoindex (char const*) ;
 int isc_string_touint64 (char*,char**,int) ;

isc_result_t
isc_netscope_pton(int af, char *scopename, void *addr, isc_uint32_t *zoneid) {
 char *ep;



 struct in6_addr *in6;
 isc_uint32_t zone;
 isc_uint64_t llz;


 if (af != AF_INET6)
  return (ISC_R_FAILURE);

 in6 = (struct in6_addr *)addr;
  llz = isc_string_touint64(scopename, &ep, 10);
  if (ep == scopename)
   return (ISC_R_FAILURE);


  zone = (isc_uint32_t)(llz & 0xffffffffUL);
  if (zone != llz)
   return (ISC_R_FAILURE);




 *zoneid = zone;
 return (ISC_R_SUCCESS);
}
