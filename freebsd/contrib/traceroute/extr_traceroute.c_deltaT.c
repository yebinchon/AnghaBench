
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;



double
deltaT(struct timeval *t1p, struct timeval *t2p)
{
 register double dt;

 dt = (double)(t2p->tv_sec - t1p->tv_sec) * 1000.0 +
      (double)(t2p->tv_usec - t1p->tv_usec) / 1000.0;
 return (dt);
}
