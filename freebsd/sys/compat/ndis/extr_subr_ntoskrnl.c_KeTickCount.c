
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timeval {int dummy; } ;


 int getmicrouptime (struct timeval*) ;
 int tvtohz (struct timeval*) ;

__attribute__((used)) static uint32_t
KeTickCount(void)
{
 struct timeval tv;
 getmicrouptime(&tv);
 return tvtohz(&tv);
}
