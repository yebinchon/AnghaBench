
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;


 int fflush (int ) ;
 int printf (char*,...) ;
 int stdout ;
 int timespecsub (struct timespec*,struct timespec*) ;

void
Chew(struct timespec *tsa, struct timespec *tsc, unsigned sa, unsigned sc)
{
 static int idx;
 struct timespec ts;

 printf("%d.%09d ", tsa->tv_sec, tsa->tv_nsec);
 printf("%d.%09d ", tsc->tv_sec, tsc->tv_nsec);
 printf("%u %u ", sa, sc);

 ts = *tsc;
 timespecsub(&ts,tsa);
 printf("%.9f ", ts.tv_sec + ts.tv_nsec / 1e9);
 printf("\n");
 fflush(stdout);
}
