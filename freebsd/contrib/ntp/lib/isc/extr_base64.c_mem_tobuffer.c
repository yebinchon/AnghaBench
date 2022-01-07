
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {unsigned int length; int base; } ;
typedef TYPE_1__ isc_region_t ;
typedef int isc_buffer_t ;


 int ISC_R_NOSPACE ;
 int ISC_R_SUCCESS ;
 int isc_buffer_add (int *,unsigned int) ;
 int isc_buffer_availableregion (int *,TYPE_1__*) ;
 int memcpy (int ,void*,unsigned int) ;

__attribute__((used)) static isc_result_t
mem_tobuffer(isc_buffer_t *target, void *base, unsigned int length) {
 isc_region_t tr;

 isc_buffer_availableregion(target, &tr);
 if (length > tr.length)
  return (ISC_R_NOSPACE);
 memcpy(tr.base, base, length);
 isc_buffer_add(target, length);
 return (ISC_R_SUCCESS);
}
