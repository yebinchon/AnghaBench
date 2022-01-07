
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int errno ;
 scalar_t__ sched_yield () ;
 int strerror (int ) ;

__attribute__((used)) static double
mul3(double x, double y, double z)
{
 ATF_REQUIRE_MSG(sched_yield() == 0,
     "sched_yield failed: %s", strerror(errno));

 return x * y * z;
}
