
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 scalar_t__ leapcorr (scalar_t__*) ;
 int tzset () ;

time_t
time2posix(time_t t)
{
 tzset();
 return t - leapcorr(&t);
}
