
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;



__attribute__((used)) static int
timeval_smaller(const struct timeval* x, const struct timeval* y)
{

 if(x->tv_sec < y->tv_sec)
  return 1;
 else if(x->tv_sec == y->tv_sec) {
  if(x->tv_usec <= y->tv_usec)
   return 1;
  else return 0;
 }
 else return 0;

}
