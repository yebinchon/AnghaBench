
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_6__ {TYPE_1__* pos; } ;
typedef TYPE_2__ isc_interfaceiter_t ;
struct TYPE_5__ {struct TYPE_5__* ifa_next; } ;


 int ISC_R_NOMORE ;
 int ISC_R_SUCCESS ;
 int linux_if_inet6_next (TYPE_2__*) ;
 int seenv6 ;

__attribute__((used)) static isc_result_t
internal_next(isc_interfaceiter_t *iter) {

 if (iter->pos != ((void*)0))
  iter->pos = iter->pos->ifa_next;
 if (iter->pos == ((void*)0)) {

  if (!seenv6)
   return (linux_if_inet6_next(iter));

  return (ISC_R_NOMORE);
 }

 return (ISC_R_SUCCESS);
}
