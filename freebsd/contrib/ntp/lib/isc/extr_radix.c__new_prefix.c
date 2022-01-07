
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_5__ {int sin; int sin6; } ;
struct TYPE_6__ {int bitlen; int family; int refcount; TYPE_1__ add; } ;
typedef TYPE_2__ isc_prefix_t ;
typedef int isc_mem_t ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int ISC_R_NOMEMORY ;
 int ISC_R_NOTIMPLEMENTED ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 TYPE_2__* isc_mem_get (int *,int) ;
 int isc_refcount_init (int *,int) ;
 int memcpy (int *,void*,int) ;

__attribute__((used)) static isc_result_t
_new_prefix(isc_mem_t *mctx, isc_prefix_t **target, int family, void *dest,
     int bitlen)
{
 isc_prefix_t *prefix;

 REQUIRE(target != ((void*)0));

 if (family != AF_INET6 && family != AF_INET && family != AF_UNSPEC)
  return (ISC_R_NOTIMPLEMENTED);

 prefix = isc_mem_get(mctx, sizeof(isc_prefix_t));
 if (prefix == ((void*)0))
  return (ISC_R_NOMEMORY);

 if (family == AF_INET6) {
  prefix->bitlen = (bitlen >= 0) ? bitlen : 128;
  memcpy(&prefix->add.sin6, dest, 16);
 } else {

  prefix->bitlen = (bitlen >= 0) ? bitlen : 32;
  memcpy(&prefix->add.sin, dest, 4);
 }

 prefix->family = family;

 isc_refcount_init(&prefix->refcount, 1);

 *target = prefix;
 return (ISC_R_SUCCESS);
}
