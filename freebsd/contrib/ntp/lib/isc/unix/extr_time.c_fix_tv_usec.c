
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef scalar_t__ isc_boolean_t ;


 scalar_t__ ISC_FALSE ;
 scalar_t__ ISC_TRUE ;
 int LOG_ERR ;
 scalar_t__ US_PER_S ;
 int syslog (int ,char*) ;

__attribute__((used)) static inline void
fix_tv_usec(struct timeval *tv) {
 isc_boolean_t fixed = ISC_FALSE;

 if (tv->tv_usec < 0) {
  fixed = ISC_TRUE;
  do {
   tv->tv_sec -= 1;
   tv->tv_usec += US_PER_S;
  } while (tv->tv_usec < 0);
 } else if (tv->tv_usec >= US_PER_S) {
  fixed = ISC_TRUE;
  do {
   tv->tv_sec += 1;
   tv->tv_usec -= US_PER_S;
  } while (tv->tv_usec >=US_PER_S);
 }



 if (fixed)
  (void)syslog(LOG_ERR, "gettimeofday returned bad tv_usec: corrected");
}
