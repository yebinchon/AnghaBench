
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_sockaddr_t ;
typedef int isc_boolean_t ;


 int ISC_SOCKADDR_CMPADDR ;
 int ISC_SOCKADDR_CMPPORT ;
 int ISC_SOCKADDR_CMPSCOPE ;
 int isc_sockaddr_compare (int const*,int const*,int) ;

isc_boolean_t
isc_sockaddr_equal(const isc_sockaddr_t *a, const isc_sockaddr_t *b) {
 return (isc_sockaddr_compare(a, b, ISC_SOCKADDR_CMPADDR|
        ISC_SOCKADDR_CMPPORT|
        ISC_SOCKADDR_CMPSCOPE));
}
