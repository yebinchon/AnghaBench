
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ isc_result_t ;
typedef int isc_mutex_t ;


 scalar_t__ ISC_R_SUCCESS ;
 scalar_t__ isc_mutex_destroy (int *) ;

isc_result_t
isc_mutexblock_destroy(isc_mutex_t *block, unsigned int count) {
 isc_result_t result;
 unsigned int i;

 for (i = 0; i < count; i++) {
  result = isc_mutex_destroy(&block[i]);
  if (result != ISC_R_SUCCESS)
   return (result);
 }

 return (ISC_R_SUCCESS);
}
