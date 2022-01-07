
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {int OrderFall; scalar_t__ RestoreMethod; TYPE_1__* Text; TYPE_2__* FoundState; TYPE_1__* MaxContext; } ;
struct TYPE_22__ {scalar_t__ Symbol; int Freq; } ;
struct TYPE_21__ {int SummFreq; scalar_t__ NumStats; int Suffix; } ;
typedef TYPE_1__* CTX_PTR ;
typedef scalar_t__ CPpmd_Void_Ref ;
typedef TYPE_2__ CPpmd_State ;
typedef TYPE_3__ CPpmd8 ;
typedef int Byte ;


 TYPE_1__* CTX (scalar_t__) ;
 TYPE_1__* CreateSuccessors (TYPE_3__*,int ,int *,TYPE_1__*) ;
 int False ;
 int MAX_FREQ ;
 TYPE_2__* ONE_STATE (TYPE_1__*) ;
 int PPMD8_MAX_ORDER ;
 scalar_t__ PPMD8_RESTORE_METHOD_FREEZE ;
 scalar_t__ REF (TYPE_1__*) ;
 int RESET_TEXT (int) ;
 TYPE_2__* STATS (TYPE_1__*) ;
 scalar_t__ SUCCESSOR (TYPE_2__*) ;
 TYPE_1__* SUFFIX (TYPE_1__*) ;
 int SetSuccessor (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static CTX_PTR ReduceOrder(CPpmd8 *p, CPpmd_State *s1, CTX_PTR c)
{
  CPpmd_State *s = ((void*)0);
  CTX_PTR c1 = c;
  CPpmd_Void_Ref upBranch = REF(p->Text);
  SetSuccessor(p->FoundState, upBranch);
  p->OrderFall++;

  for (;;)
  {
    if (s1)
    {
      c = SUFFIX(c);
      s = s1;
      s1 = ((void*)0);
    }
    else
    {
      if (!c->Suffix)
      {
        return c;
      }
      c = SUFFIX(c);
      if (c->NumStats)
      {
        if ((s = STATS(c))->Symbol != p->FoundState->Symbol)
          do { s++; } while (s->Symbol != p->FoundState->Symbol);
        if (s->Freq < MAX_FREQ - 9)
        {
          s->Freq += 2;
          c->SummFreq += 2;
        }
      }
      else
      {
        s = ONE_STATE(c);
        s->Freq = (Byte)(s->Freq + (s->Freq < 32));
      }
    }
    if (SUCCESSOR(s))
      break;



    SetSuccessor(s, upBranch);
    p->OrderFall++;
  }
  if (SUCCESSOR(s) <= upBranch)
  {
    CTX_PTR successor;
    CPpmd_State *s2 = p->FoundState;
    p->FoundState = s;

    successor = CreateSuccessors(p, False, ((void*)0), c);
    if (successor == ((void*)0))
      SetSuccessor(s, 0);
    else
      SetSuccessor(s, REF(successor));
    p->FoundState = s2;
  }

  if (p->OrderFall == 1 && c1 == p->MaxContext)
  {
    SetSuccessor(p->FoundState, SUCCESSOR(s));
    p->Text--;
  }
  if (SUCCESSOR(s) == 0)
    return ((void*)0);
  return CTX(SUCCESSOR(s));
}
