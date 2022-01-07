
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;


 int BT_NUMBUFTYPES ;
 int CLOCK_REALTIME_PRECISE ;
 int clock_gettime (int ,TYPE_2__*) ;
 scalar_t__ debug ;
 scalar_t__ diskreads ;
 int printIOstats () ;
 int printf (char*,char*) ;
 scalar_t__* readcnt ;
 TYPE_1__* readtime ;
 TYPE_2__ startpass ;
 TYPE_2__ startprog ;
 int timespecadd (int *,TYPE_1__*,int *) ;
 int totaldiskreads ;
 int * totalreadcnt ;
 int * totalreadtime ;

void
IOstats(char *what)
{
 int i;

 if (debug == 0)
  return;
 if (diskreads == 0) {
  printf("%s: no I/O\n\n", what);
  return;
 }
 if (startpass.tv_sec == 0)
  startpass = startprog;
 printf("%s: I/O statistics\n", what);
 printIOstats();
 totaldiskreads += diskreads;
 diskreads = 0;
 for (i = 0; i < BT_NUMBUFTYPES; i++) {
  timespecadd(&totalreadtime[i], &readtime[i], &totalreadtime[i]);
  totalreadcnt[i] += readcnt[i];
  readtime[i].tv_sec = readtime[i].tv_nsec = 0;
  readcnt[i] = 0;
 }
 clock_gettime(CLOCK_REALTIME_PRECISE, &startpass);
}
