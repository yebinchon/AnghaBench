
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; } ;


 int MICROSECONDS_MASK ;

__attribute__((used)) static inline int
is_same_common_timeout(const struct timeval *tv1, const struct timeval *tv2)
{
 return (tv1->tv_usec & ~MICROSECONDS_MASK) ==
     (tv2->tv_usec & ~MICROSECONDS_MASK);
}
