
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ result6; int clua_done; scalar_t__ clua_context; int clua_sa; int first6; scalar_t__ pos6; scalar_t__ pos; } ;
typedef TYPE_1__ isc_interfaceiter_t ;


 int CLUA_SUCCESS ;
 scalar_t__ ISC_R_NOMORE ;
 scalar_t__ ISC_R_SUCCESS ;
 int ISC_TF (int) ;
 int ISC_TRUE ;
 int clua_getaliasaddress (int *,scalar_t__*) ;
 int linux_if_inet6_first (TYPE_1__*) ;

__attribute__((used)) static
void internal_first(isc_interfaceiter_t *iter) {



 iter->pos = 0;
 linux_if_inet6_first(iter);

}
