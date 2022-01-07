
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int suseconds_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int UINT16 ;


 int tvtohz (struct timeval*) ;

__attribute__((used)) static int
timeout2hz(UINT16 Timeout)
{
 struct timeval tv;

 tv.tv_sec = (time_t)(Timeout / 1000);
 tv.tv_usec = (suseconds_t)(Timeout % 1000) * 1000;

 return (tvtohz(&tv));
}
