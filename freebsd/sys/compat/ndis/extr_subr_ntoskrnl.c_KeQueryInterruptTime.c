
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {int dummy; } ;


 int getmicrouptime (struct timeval*) ;
 int howmany (int,int ) ;
 int hz ;
 int tvtohz (struct timeval*) ;

__attribute__((used)) static uint64_t
KeQueryInterruptTime(void)
{
 int ticks;
 struct timeval tv;

 getmicrouptime(&tv);

 ticks = tvtohz(&tv);

 return ticks * howmany(10000000, hz);
}
