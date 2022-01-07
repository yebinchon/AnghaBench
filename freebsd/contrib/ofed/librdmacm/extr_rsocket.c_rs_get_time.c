
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timeval {int tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;
 int memset (struct timeval*,int ,int) ;

__attribute__((used)) static uint32_t rs_get_time(void)
{
 struct timeval now;

 memset(&now, 0, sizeof now);
 gettimeofday(&now, ((void*)0));
 return (uint32_t) now.tv_sec;
}
