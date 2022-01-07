
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_5__ {scalar_t__ family; int bitlen; int refcount; int add; } ;
typedef TYPE_1__ isc_prefix_t ;
typedef int isc_mem_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 int INSIST (int) ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int _new_prefix (int *,TYPE_1__**,scalar_t__,int *,int) ;
 scalar_t__ isc_refcount_current (int *) ;
 int isc_refcount_increment (int *,int *) ;

__attribute__((used)) static isc_result_t
_ref_prefix(isc_mem_t *mctx, isc_prefix_t **target, isc_prefix_t *prefix) {
 INSIST(prefix != ((void*)0));
 INSIST((prefix->family == AF_INET && prefix->bitlen <= 32) ||
        (prefix->family == AF_INET6 && prefix->bitlen <= 128) ||
        (prefix->family == AF_UNSPEC && prefix->bitlen == 0));
 REQUIRE(target != ((void*)0) && *target == ((void*)0));






 if (isc_refcount_current(&prefix->refcount) == 0) {
  isc_result_t ret;
  ret = _new_prefix(mctx, target, prefix->family,
      &prefix->add, prefix->bitlen);
  return ret;
 }

 isc_refcount_increment(&prefix->refcount, ((void*)0));

 *target = prefix;
 return (ISC_R_SUCCESS);
}
