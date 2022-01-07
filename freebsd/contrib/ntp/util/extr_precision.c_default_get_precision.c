
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int dummy; } ;
struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;


 scalar_t__ DUSECS ;
 int GETTIMEOFDAY (struct timeval*,struct timezone*) ;
 long HUSECS ;
 long MAXSTEP ;
 int MINLOOPS ;
 long MINSTEP ;
 int TIMEOFDAY ;
 int getclock (int ,struct timespec*) ;
 int printf (char*,long,...) ;

int
default_get_precision(void)
{
 struct timeval tp;
 struct timezone tzp;



 long last;
 int i;
 long diff;
 long val;
 long usec;

 usec = 0;
 val = MAXSTEP;





 GETTIMEOFDAY(&tp, &tzp);

 last = tp.tv_usec;
 for (i = 0; i < MINLOOPS && usec < HUSECS;) {





  GETTIMEOFDAY(&tp, &tzp);

  diff = tp.tv_usec - last;
  last = tp.tv_usec;
  if (diff < 0)
      diff += DUSECS;
  usec += diff;
  if (diff > MINSTEP) {
   i++;
   if (diff < val)
       val = diff;
  }
 }
 printf("precision  = %ld usec after %d loop%s\n",
        val, i, (i == 1) ? "" : "s");
 if (usec >= HUSECS) {
  printf("     (Boy this machine is fast ! usec was %ld)\n",
         usec);
  val = MINSTEP;
 }
 diff = HUSECS;
 for (i = 0; diff > val; i--)
     diff >>= 1;
 return (i);
}
