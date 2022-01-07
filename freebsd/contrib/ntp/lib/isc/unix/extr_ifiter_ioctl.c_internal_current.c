
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
struct TYPE_6__ {int mode; scalar_t__ result6; int clua_done; } ;
typedef TYPE_1__ isc_interfaceiter_t ;


 scalar_t__ ISC_R_NOMORE ;
 scalar_t__ internal_current4 (TYPE_1__*) ;
 scalar_t__ internal_current6 (TYPE_1__*) ;
 scalar_t__ internal_current_clusteralias (TYPE_1__*) ;

__attribute__((used)) static isc_result_t
internal_current(isc_interfaceiter_t *iter) {
 return (internal_current4(iter));
}
