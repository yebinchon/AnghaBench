
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gettimeofday (int *,int *) ;
 int slowio_pollcnt ;
 int slowio_starttime ;

void
slowio_start()
{


 slowio_pollcnt = (slowio_pollcnt + 1) & 7;
 if (slowio_pollcnt == 0) {
  gettimeofday(&slowio_starttime, ((void*)0));
 }
}
