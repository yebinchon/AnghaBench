
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bottom; scalar_t__ consume; } ;


 int Dump (char,scalar_t__,int) ;
 int TerminalFlushOutput () ;
 int TerminalWrite (char*,int) ;
 int ring_consumed (TYPE_1__*,int) ;
 int ring_full_consecutive (TYPE_1__*) ;
 int ring_full_count (TYPE_1__*) ;
 scalar_t__ termdata ;
 TYPE_1__ ttyoring ;

int
ttyflush(int drop)
{
    int n, n0, n1;

    n0 = ring_full_count(&ttyoring);
    if ((n1 = n = ring_full_consecutive(&ttyoring)) > 0) {
 if (drop) {
     TerminalFlushOutput();

 } else {
     n = TerminalWrite((char *)ttyoring.consume, n);
 }
    }
    if (n > 0) {
 if (termdata && n) {
     Dump('>', ttyoring.consume, n);
 }





 if (n1 == n && n0 > n) {
  n1 = n0 - n;
  if (!drop)
   n1 = TerminalWrite((char *)ttyoring.bottom, n1);
  if (n1 > 0)
   n += n1;
 }
 ring_consumed(&ttyoring, n);
    }
    if (n < 0)
 return -1;
    if (n == n0) {
 if (n0)
     return -1;
 return 0;
    }
    return n0 - n + 1;
}
