
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {scalar_t__ tz_dsttime; scalar_t__ tz_minuteswest; int tv_usec; int tv_sec; } ;
struct timeval {int tv_usec; int tv_sec; } ;
struct thread {int dummy; } ;
struct linux_gettimeofday_args {int * tzp; int * tp; } ;
typedef int rtz ;
typedef struct timezone l_timeval ;
typedef int atv32 ;


 int copyout (struct timezone*,int *,int) ;
 int microtime (struct timeval*) ;

int
linux_gettimeofday(struct thread *td, struct linux_gettimeofday_args *uap)
{
 struct timeval atv;
 l_timeval atv32;
 struct timezone rtz;
 int error = 0;

 if (uap->tp) {
  microtime(&atv);
  atv32.tv_sec = atv.tv_sec;
  atv32.tv_usec = atv.tv_usec;
  error = copyout(&atv32, uap->tp, sizeof(atv32));
 }
 if (error == 0 && uap->tzp != ((void*)0)) {
  rtz.tz_minuteswest = 0;
  rtz.tz_dsttime = 0;
  error = copyout(&rtz, uap->tzp, sizeof(rtz));
 }
 return (error);
}
