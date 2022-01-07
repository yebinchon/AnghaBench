
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct sockaddr_storage {int dummy; } ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_PORT ;
 struct sockaddr_storage* ldns_rdf2native_sockaddr_storage_port (int const*,scalar_t__,size_t*) ;

struct sockaddr_storage *
ldns_rdf2native_sockaddr_storage(
  const ldns_rdf *rd, uint16_t port, size_t *size)
{
 return ldns_rdf2native_sockaddr_storage_port(
   rd, (port == 0 ? (uint16_t)LDNS_PORT : port), size);
}
