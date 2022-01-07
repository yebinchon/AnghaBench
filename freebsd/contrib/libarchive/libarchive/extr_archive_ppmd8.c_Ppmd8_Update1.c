
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* FoundState; TYPE_1__* MinContext; } ;
struct TYPE_10__ {scalar_t__ Freq; } ;
struct TYPE_9__ {int SummFreq; } ;
typedef TYPE_2__ CPpmd_State ;
typedef TYPE_3__ CPpmd8 ;


 scalar_t__ MAX_FREQ ;
 int NextContext (TYPE_3__*) ;
 int Rescale (TYPE_3__*) ;
 int SwapStates (TYPE_2__*,TYPE_2__*) ;

void Ppmd8_Update1(CPpmd8 *p)
{
  CPpmd_State *s = p->FoundState;
  s->Freq += 4;
  p->MinContext->SummFreq += 4;
  if (s[0].Freq > s[-1].Freq)
  {
    SwapStates(&s[0], &s[-1]);
    p->FoundState = --s;
    if (s->Freq > MAX_FREQ)
      Rescale(p);
  }
  NextContext(p);
}
