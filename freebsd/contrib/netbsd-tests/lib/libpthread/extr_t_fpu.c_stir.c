
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_MSG (int,char*,int ) ;
 double cos (double) ;
 int errno ;
 scalar_t__ sched_yield () ;
 double sin (double) ;
 int strerror (int ) ;

__attribute__((used)) static void *
stir(void *p)
{
 double *q = (double *)p;
 double x = *q++;
 double y = *q++;
 double z = *q++;

 for (;;) {
  x = sin ((y = cos (x + y + .4)) - (z = cos (x + z + .6)));
  ATF_REQUIRE_MSG(sched_yield() == 0,
      "sched_yield failed: %s", strerror(errno));
 }
}
