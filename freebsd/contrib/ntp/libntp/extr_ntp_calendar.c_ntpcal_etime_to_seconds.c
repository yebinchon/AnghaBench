
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int MINSPERHR ;
 int SECSPERMIN ;

int32_t
ntpcal_etime_to_seconds(
 int32_t hours,
 int32_t minutes,
 int32_t seconds
 )
{
 int32_t res;

 res = (hours * MINSPERHR + minutes) * SECSPERMIN + seconds;

 return res;
}
