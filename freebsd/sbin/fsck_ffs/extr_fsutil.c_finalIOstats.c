
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BT_NUMBUFTYPES ;
 scalar_t__ debug ;
 scalar_t__ diskreads ;
 int printIOstats () ;
 int printf (char*) ;
 scalar_t__* readcnt ;
 int * readtime ;
 int startpass ;
 int startprog ;
 int timespecadd (int *,int *,int *) ;
 scalar_t__ totaldiskreads ;
 scalar_t__* totalreadcnt ;
 int * totalreadtime ;

void
finalIOstats(void)
{
 int i;

 if (debug == 0)
  return;
 printf("Final I/O statistics\n");
 totaldiskreads += diskreads;
 diskreads = totaldiskreads;
 startpass = startprog;
 for (i = 0; i < BT_NUMBUFTYPES; i++) {
  timespecadd(&totalreadtime[i], &readtime[i], &totalreadtime[i]);
  totalreadcnt[i] += readcnt[i];
  readtime[i] = totalreadtime[i];
  readcnt[i] = totalreadcnt[i];
 }
 printIOstats();
}
