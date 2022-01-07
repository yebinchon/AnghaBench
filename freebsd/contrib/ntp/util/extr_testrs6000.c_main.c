
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_5__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_4__ {int tv_sec; scalar_t__ tv_usec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;
struct TYPE_6__ {int tv_usec; scalar_t__ tv_sec; } ;


 int ITIMER_REAL ;
 int SIGALRM ;
 TYPE_3__ adjustment ;
 char* ctime (int *) ;
 int pause () ;
 int printf (char*,char*) ;
 int setitimer (int ,struct itimerval*,struct itimerval*) ;
 int signal (int ,int ) ;
 int time (int ) ;
 int timeout ;

int
main (
 int argc,
 char *argv[]
 )
{
 struct itimerval value, oldvalue;
 int i;
 time_t curtime;

 curtime = time(0);
 printf("Starting: %s", ctime(&curtime));
 value.it_interval.tv_sec = value.it_value.tv_sec = 1;
 value.it_interval.tv_usec = value.it_value.tv_usec = 0;
 adjustment.tv_sec = 0;
 adjustment.tv_usec = -2000;
 signal(SIGALRM, timeout);
 setitimer(ITIMER_REAL, &value, &oldvalue);
 for (i=0; i<10; i++) {
  pause();
 }
}
