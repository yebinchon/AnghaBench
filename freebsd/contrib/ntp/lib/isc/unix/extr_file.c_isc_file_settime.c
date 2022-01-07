
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; scalar_t__ tv_usec; } ;
typedef int isc_time_t ;
typedef int isc_result_t ;
typedef scalar_t__ isc_int32_t ;


 int CHAR_BIT ;
 int ISC_R_RANGE ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int errno ;
 int isc__errno2result (int ) ;
 int isc_time_nanoseconds (int *) ;
 scalar_t__ isc_time_seconds (int *) ;
 scalar_t__ utimes (char const*,struct timeval*) ;

isc_result_t
isc_file_settime(const char *file, isc_time_t *itime) {
 struct timeval times[2];

 REQUIRE(file != ((void*)0) && itime != ((void*)0));
 times[0].tv_sec = times[1].tv_sec = (long)isc_time_seconds(itime);




 if ((times[0].tv_sec &
      (1ULL << (sizeof(times[0].tv_sec) * CHAR_BIT - 1))) != 0)
  return (ISC_R_RANGE);







 times[0].tv_usec = times[1].tv_usec =
  (isc_int32_t)(isc_time_nanoseconds(itime) / 1000);

 if (utimes(file, times) < 0)
  return (isc__errno2result(errno));

 return (ISC_R_SUCCESS);
}
