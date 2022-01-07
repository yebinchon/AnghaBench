
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* buf; } ;
typedef TYPE_1__ CStr ;


 int KillPos ;
 TYPE_1__* KillRing ;
 int KillRingLen ;
 int KillRingMax ;
 int YankPos ;
 TYPE_1__* xcalloc (int,int) ;
 int xfree (TYPE_1__*) ;

void
SetKillRing(int max)
{
    CStr *new;
    int count, i, j;

    if (max < 1)
 max = 1;
    if (max == KillRingMax)
 return;
    new = xcalloc(max, sizeof(CStr));
    if (KillRing != ((void*)0)) {
 if (KillRingLen != 0) {
     if (max >= KillRingLen) {
  count = KillRingLen;
  j = KillPos;
     } else {
  count = max;
  j = (KillPos - count + KillRingLen) % KillRingLen;
     }
     for (i = 0; i < KillRingLen; i++) {
  if (i < count)
      new[i] = KillRing[j];
  else
      xfree(KillRing[j].buf);
  j = (j + 1) % KillRingLen;
     }
     KillRingLen = count;
     KillPos = count % max;
     YankPos = count - 1;
 }
 xfree(KillRing);
    }
    KillRing = new;
    KillRingMax = max;
}
