
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UInt32 ;
typedef unsigned int UInt16 ;
struct TYPE_7__ {int Symbol; unsigned int Freq; } ;
struct TYPE_6__ {unsigned int NumStats; int SummFreq; int Flags; int Stats; } ;
typedef TYPE_1__* CTX_PTR ;
typedef TYPE_2__ CPpmd_State ;
typedef int CPpmd8 ;
typedef void* Byte ;


 int REF (TYPE_2__*) ;
 int STATS (TYPE_1__*) ;
 scalar_t__ ShrinkUnits (int *,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void Refresh(CPpmd8 *p, CTX_PTR ctx, unsigned oldNU, unsigned scale)
{
  unsigned i = ctx->NumStats, escFreq, sumFreq, flags;
  CPpmd_State *s = (CPpmd_State *)ShrinkUnits(p, STATS(ctx), oldNU, (i + 2) >> 1);
  ctx->Stats = REF(s);




  flags = (ctx->Flags & (0x10 + 0x04 * scale)) + 0x08 * (s->Symbol >= 0x40);
  escFreq = ctx->SummFreq - s->Freq;
  sumFreq = (s->Freq = (Byte)((s->Freq + scale) >> scale));
  do
  {
    escFreq -= (++s)->Freq;
    sumFreq += (s->Freq = (Byte)((s->Freq + scale) >> scale));
    flags |= 0x08 * (s->Symbol >= 0x40);
  }
  while (--i);
  ctx->SummFreq = (UInt16)(sumFreq + ((escFreq + scale) >> scale));
  ctx->Flags = (Byte)flags;
}
