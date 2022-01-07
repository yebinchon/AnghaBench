
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 scalar_t__ CurrentPid ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int srand (unsigned int) ;
 int srandom (long) ;
 int srandomdev () ;

void
seed_random()
{



 long seed;
 struct timeval t;

 seed = (long) CurrentPid;
 if (gettimeofday(&t, ((void*)0)) >= 0)
  seed += t.tv_sec + t.tv_usec;




 (void) srand((unsigned int) seed);


}
