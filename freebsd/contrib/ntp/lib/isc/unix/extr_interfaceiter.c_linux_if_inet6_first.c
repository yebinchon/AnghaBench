
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int valid; int * proc; } ;
typedef TYPE_1__ isc_interfaceiter_t ;


 int ISC_R_NOMORE ;
 int linux_if_inet6_next (TYPE_1__*) ;
 int rewind (int *) ;

__attribute__((used)) static void
linux_if_inet6_first(isc_interfaceiter_t *iter) {
 if (iter->proc != ((void*)0)) {
  rewind(iter->proc);
  (void)linux_if_inet6_next(iter);
 } else
  iter->valid = ISC_R_NOMORE;
}
