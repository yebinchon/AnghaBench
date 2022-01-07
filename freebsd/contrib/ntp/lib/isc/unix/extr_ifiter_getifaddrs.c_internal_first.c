
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ifaddrs; int pos; } ;
typedef TYPE_1__ isc_interfaceiter_t ;


 int linux_if_inet6_first (TYPE_1__*) ;

__attribute__((used)) static
void internal_first(isc_interfaceiter_t *iter) {


 linux_if_inet6_first(iter);

 iter->pos = iter->ifaddrs;
}
