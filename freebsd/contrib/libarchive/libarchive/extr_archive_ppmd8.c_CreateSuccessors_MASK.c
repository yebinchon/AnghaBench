#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int UInt32 ;
struct TYPE_23__ {scalar_t__ HiUnit; scalar_t__ LoUnit; scalar_t__* FreeList; TYPE_2__* FoundState; } ;
struct TYPE_22__ {void* Symbol; int Freq; } ;
struct TYPE_21__ {scalar_t__ NumStats; int SummFreq; scalar_t__ Suffix; void* Flags; } ;
typedef  TYPE_1__* CTX_PTR ;
typedef  scalar_t__ CPpmd_Void_Ref ;
typedef  TYPE_2__ CPpmd_State ;
typedef  scalar_t__ CPpmd_Byte_Ref ;
typedef  TYPE_3__ CPpmd8 ;
typedef  void* Byte ;
typedef  int /*<<< orphan*/  Bool ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int MAX_FREQ ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  PPMD8_MAX_ORDER ; 
 scalar_t__ FUNC3 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ UNIT_SIZE ; 

__attribute__((used)) static CTX_PTR FUNC10(CPpmd8 *p, Bool skip, CPpmd_State *s1, CTX_PTR c)
{
  CPpmd_State upState;
  Byte flags;
  CPpmd_Byte_Ref upBranch = (CPpmd_Byte_Ref)FUNC7(p->FoundState);
  /* fixed over Shkarin's code. Maybe it could work without + 1 too. */
  CPpmd_State *ps[PPMD8_MAX_ORDER + 1];
  unsigned numPs = 0;
  
  if (!skip)
    ps[numPs++] = p->FoundState;
  
  while (c->Suffix)
  {
    CPpmd_Void_Ref successor;
    CPpmd_State *s;
    c = FUNC8(c);
    if (s1)
    {
      s = s1;
      s1 = NULL;
    }
    else if (c->NumStats != 0)
    {
      for (s = FUNC6(c); s->Symbol != p->FoundState->Symbol; s++);
      if (s->Freq < MAX_FREQ - 9)
      {
        s->Freq++;
        c->SummFreq++;
      }
    }
    else
    {
      s = FUNC2(c);
      s->Freq = (Byte)(s->Freq + (!FUNC8(c)->NumStats & (s->Freq < 24)));
    }
    successor = FUNC7(s);
    if (successor != upBranch)
    {
      c = FUNC1(successor);
      if (numPs == 0)
        return c;
      break;
    }
    ps[numPs++] = s;
  }
  
  upState.Symbol = *(const Byte *)FUNC3(p, upBranch);
  FUNC9(&upState, upBranch + 1);
  flags = (Byte)(0x10 * (p->FoundState->Symbol >= 0x40) + 0x08 * (upState.Symbol >= 0x40));

  if (c->NumStats == 0)
    upState.Freq = FUNC2(c)->Freq;
  else
  {
    UInt32 cf, s0;
    CPpmd_State *s;
    for (s = FUNC6(c); s->Symbol != upState.Symbol; s++);
    cf = s->Freq - 1;
    s0 = c->SummFreq - c->NumStats - cf;
    upState.Freq = (Byte)(1 + ((2 * cf <= s0) ? (5 * cf > s0) : ((cf + 2 * s0 - 3) / s0)));
  }

  do
  {
    /* Create Child */
    CTX_PTR c1; /* = AllocContext(p); */
    if (p->HiUnit != p->LoUnit)
      c1 = (CTX_PTR)(p->HiUnit -= UNIT_SIZE);
    else if (p->FreeList[0] != 0)
      c1 = (CTX_PTR)FUNC5(p, 0);
    else
    {
      c1 = (CTX_PTR)FUNC0(p, 0);
      if (!c1)
        return NULL;
    }
    c1->NumStats = 0;
    c1->Flags = flags;
    *FUNC2(c1) = upState;
    c1->Suffix = FUNC4(c);
    FUNC9(ps[--numPs], FUNC4(c1));
    c = c1;
  }
  while (numPs != 0);
  
  return c;
}