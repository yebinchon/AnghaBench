
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int TSENTER () ;
 int TSEXIT () ;
 int mv_delay (int,int *) ;
 int timers_initialized ;

void
DELAY(int usec)
{
 uint32_t val;

 if (!timers_initialized) {
  for (; usec > 0; usec--)
   for (val = 100; val > 0; val--)
    __asm __volatile("nop" ::: "memory");
 } else {
  TSENTER();
  mv_delay(usec, ((void*)0));
  TSEXIT();
 }
}
