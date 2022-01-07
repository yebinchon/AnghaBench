
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
typedef int isc_uint32_t ;


 int nanosleep (struct timespec*,int *) ;
 int sleep (int) ;
 int usleep (int) ;

void
isc_test_nap(isc_uint32_t usec) {
 sleep((usec / 1000000) + 1);

}
