
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cloudabi_clockid_t ;
typedef int clockid_t ;


 int CLOCK_MONOTONIC ;
 int CLOCK_PROCESS_CPUTIME_ID ;
 int CLOCK_REALTIME ;
 int CLOCK_THREAD_CPUTIME_ID ;




 int EINVAL ;

__attribute__((used)) static int
cloudabi_convert_clockid(cloudabi_clockid_t in, clockid_t *out)
{
 switch (in) {
 case 131:
  *out = CLOCK_MONOTONIC;
  return (0);
 case 130:
  *out = CLOCK_PROCESS_CPUTIME_ID;
  return (0);
 case 129:
  *out = CLOCK_REALTIME;
  return (0);
 case 128:
  *out = CLOCK_THREAD_CPUTIME_ID;
  return (0);
 default:
  return (EINVAL);
 }
}
