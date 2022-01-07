
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ INT32_MAX ;
 scalar_t__ INT64_MAX ;
 scalar_t__ TIME_T_MAX ;

__attribute__((used)) static int64_t
get_time_t_max(void)
{







 if (((time_t)0) < ((time_t)-1)) {

  return (~(time_t)0);
 } else {


  if (sizeof(time_t) == sizeof(int64_t)) {
   return (time_t)INT64_MAX;
  } else {
   return (time_t)INT32_MAX;
  }
 }

}
