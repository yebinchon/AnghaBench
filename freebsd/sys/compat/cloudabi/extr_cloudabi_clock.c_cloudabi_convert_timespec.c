
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
typedef int cloudabi_timestamp_t ;


 int EOVERFLOW ;
 int UINT64_MAX ;

int
cloudabi_convert_timespec(const struct timespec *in, cloudabi_timestamp_t *out)
{
 cloudabi_timestamp_t s, ns;

 if (in->tv_sec < 0) {

  *out = 0;
  return (EOVERFLOW);
 }
 s = in->tv_sec;
 ns = in->tv_nsec;
 if (s > UINT64_MAX / 1000000000 ||
     (s == UINT64_MAX / 1000000000 && ns > UINT64_MAX % 1000000000)) {

  *out = UINT64_MAX;
  return (EOVERFLOW);
 }
 *out = s * 1000000000 + ns;
 return (0);
}
