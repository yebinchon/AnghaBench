
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_27__ {void** UnitsStart; unsigned int MaxOrder; } ;
struct TYPE_26__ {int Symbol; void* Freq; } ;
struct TYPE_25__ {int NumStats; int Flags; int SummFreq; int Stats; } ;
typedef TYPE_1__* CTX_PTR ;
typedef int CPpmd_Void_Ref ;
typedef TYPE_2__ CPpmd_State ;
typedef TYPE_3__ CPpmd8 ;
typedef void* Byte ;


 TYPE_1__* CTX (scalar_t__) ;
 int FreeUnits (TYPE_3__*,TYPE_2__*,unsigned int) ;
 int MoveUnitsUp (TYPE_3__*,TYPE_2__*,unsigned int) ;
 TYPE_2__* ONE_STATE (TYPE_1__*) ;
 scalar_t__ Ppmd8_GetPtr (TYPE_3__*,scalar_t__) ;
 int REF (TYPE_1__*) ;
 int Refresh (TYPE_3__*,TYPE_1__*,unsigned int,int) ;
 TYPE_2__* STATS (TYPE_1__*) ;
 int STATS_REF (int ) ;
 scalar_t__ SUCCESSOR (TYPE_2__*) ;
 int SetSuccessor (TYPE_2__*,int ) ;
 int SpecialFreeUnit (TYPE_3__*,TYPE_1__*) ;
 int SwapStates (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static CPpmd_Void_Ref CutOff(CPpmd8 *p, CTX_PTR ctx, unsigned order)
{
  int i;
  unsigned tmp;
  CPpmd_State *s;

  if (!ctx->NumStats)
  {
    s = ONE_STATE(ctx);
    if ((Byte *)Ppmd8_GetPtr(p, SUCCESSOR(s)) >= p->UnitsStart)
    {
      if (order < p->MaxOrder)
        SetSuccessor(s, CutOff(p, CTX(SUCCESSOR(s)), order + 1));
      else
        SetSuccessor(s, 0);
      if (SUCCESSOR(s) || order <= 9)
        return REF(ctx);
    }
    SpecialFreeUnit(p, ctx);
    return 0;
  }

  ctx->Stats = STATS_REF(MoveUnitsUp(p, STATS(ctx), tmp = ((unsigned)ctx->NumStats + 2) >> 1));

  for (s = STATS(ctx) + (i = ctx->NumStats); s >= STATS(ctx); s--)
    if ((Byte *)Ppmd8_GetPtr(p, SUCCESSOR(s)) < p->UnitsStart)
    {
      CPpmd_State *s2 = STATS(ctx) + (i--);
      SetSuccessor(s, 0);
      SwapStates(s, s2);
    }
    else if (order < p->MaxOrder)
      SetSuccessor(s, CutOff(p, CTX(SUCCESSOR(s)), order + 1));
    else
      SetSuccessor(s, 0);

  if (i != ctx->NumStats && order)
  {
    ctx->NumStats = (Byte)i;
    s = STATS(ctx);
    if (i < 0)
    {
      FreeUnits(p, s, tmp);
      SpecialFreeUnit(p, ctx);
      return 0;
    }
    if (i == 0)
    {
      ctx->Flags = (Byte)((ctx->Flags & 0x10) + 0x08 * (s->Symbol >= 0x40));
      *ONE_STATE(ctx) = *s;
      FreeUnits(p, s, tmp);

      ONE_STATE(ctx)->Freq = (Byte)(((unsigned)ONE_STATE(ctx)->Freq + 11) >> 3);
    }
    else
      Refresh(p, ctx, tmp, ctx->SummFreq > 16 * i);
  }
  return REF(ctx);
}
