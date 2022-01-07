
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
struct TYPE_5__ {int mode; scalar_t__ result6; scalar_t__ clua_done; int clua_context; int clua_sa; scalar_t__ first6; } ;
typedef TYPE_1__ isc_interfaceiter_t ;


 int CLUA_SUCCESS ;
 scalar_t__ ISC_FALSE ;
 scalar_t__ ISC_R_NOMORE ;
 scalar_t__ ISC_R_SUCCESS ;
 scalar_t__ ISC_TRUE ;
 int clua_getaliasaddress (int *,int *) ;
 scalar_t__ internal_next4 (TYPE_1__*) ;
 scalar_t__ internal_next6 (TYPE_1__*) ;

__attribute__((used)) static isc_result_t
internal_next(isc_interfaceiter_t *iter) {
 return (internal_next4(iter));
}
