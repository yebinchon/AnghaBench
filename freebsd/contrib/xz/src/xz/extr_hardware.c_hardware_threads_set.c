
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int lzma_cputhreads () ;
 int threads_max ;

extern void
hardware_threads_set(uint32_t n)
{
 if (n == 0) {
  threads_max = 1;

 } else {
  threads_max = n;
 }

 return;
}
