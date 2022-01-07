
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int dummy; } ;
struct timeval {long tv_usec; } ;


 int DEFAULT_SYS_PRECISION ;
 scalar_t__ DUSECS ;
 long HUSECS ;
 int MAXLOOPS ;
 int MINLOOPS ;
 long MINSTEP ;
 int gettimeofday (struct timeval*,struct timezone*) ;
 int printf (char*,...) ;

int
default_get_resolution(void)
{
 struct timeval tp;
 struct timezone tzp;
 long last;
 int i;
 long diff;
 long val;
 int minsteps = MINLOOPS;

 gettimeofday(&tp, &tzp);
 last = tp.tv_usec;
 for (i = - --minsteps; i< MAXLOOPS; i++) {
  gettimeofday(&tp, &tzp);
  diff = tp.tv_usec - last;
  if (diff < 0) diff += DUSECS;
  if (diff > MINSTEP) if (minsteps-- <= 0) break;
  last = tp.tv_usec;
 }

 printf("resolution = %ld usec after %d loop%s\n",
        diff, i, (i==1) ? "" : "s");

 diff = (diff *3)/2;
 if (i >= MAXLOOPS) {
  printf(
   "     (Boy this machine is fast ! %d loops without a step)\n",
   MAXLOOPS);
  diff = 1;
 }
 if (i == 0) {
  printf(
   "     (The resolution is less than the time to read the clock -- Assume 1us)\n");
  diff = 1;
 }
 for (i=0, val=HUSECS; val>0; i--, val >>= 1) if (diff >= val) return i;
 printf("     (Oh dear -- that wasn't expected ! I'll guess !)\n");
 return DEFAULT_SYS_PRECISION ;
}
