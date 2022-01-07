
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timespec {long tv_nsec; int tv_sec; } ;



struct timespec
evConsTime(time_t sec, long nsec) {
 struct timespec x;

 x.tv_sec = sec;
 x.tv_nsec = nsec;
 return (x);
}
