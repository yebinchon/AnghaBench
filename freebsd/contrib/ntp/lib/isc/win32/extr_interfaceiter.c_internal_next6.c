
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {scalar_t__ pos6; } ;
typedef TYPE_1__ isc_interfaceiter_t ;


 int ISC_R_NOMORE ;
 int ISC_R_SUCCESS ;

__attribute__((used)) static isc_result_t
internal_next6(isc_interfaceiter_t *iter) {
 if (iter->pos6 == 0)
  return (ISC_R_NOMORE);
 iter->pos6--;
 return (ISC_R_SUCCESS);
}
