
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct timeval {long tv_sec; long tv_usec; } const timeval ;
typedef long int64_t ;


 int const PCAP_TSTAMP_PRECISION_NANO ;
 long const _NSEC_PER_SEC ;

__attribute__((used)) static inline
struct timeval
snf_timestamp_to_timeval(const int64_t ts_nanosec, const int tstamp_precision)
{
 struct timeval tv;
 long tv_nsec;
        const static struct timeval zero_timeval;

        if (ts_nanosec == 0)
                return zero_timeval;

 tv.tv_sec = ts_nanosec / _NSEC_PER_SEC;
 tv_nsec = (ts_nanosec % _NSEC_PER_SEC);


 if (tstamp_precision == PCAP_TSTAMP_PRECISION_NANO)
  tv.tv_usec = tv_nsec;
 else
  tv.tv_usec = tv_nsec / 1000;

 return tv;
}
