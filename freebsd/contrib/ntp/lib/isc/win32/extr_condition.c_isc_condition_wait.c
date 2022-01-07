
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int isc_mutex_t ;
typedef int isc_condition_t ;


 int INFINITE ;
 int wait (int *,int *,int ) ;

isc_result_t
isc_condition_wait(isc_condition_t *cond, isc_mutex_t *mutex) {
 return (wait(cond, mutex, INFINITE));
}
