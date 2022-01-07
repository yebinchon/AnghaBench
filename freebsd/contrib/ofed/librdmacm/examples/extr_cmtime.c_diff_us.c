
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; float tv_usec; } ;



__attribute__((used)) static float diff_us(struct timeval *end, struct timeval *start)
{
 return (end->tv_sec - start->tv_sec) * 1000000. + (end->tv_usec - start->tv_usec);
}
