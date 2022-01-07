
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UInt16 ;
struct TYPE_11__ {int Size; int OrderFall; int MaxOrder; int RunLength; int InitRL; unsigned int* NS2Indx; TYPE_3__** See; scalar_t__** BinSumm; TYPE_2__* FoundState; TYPE_1__* MinContext; scalar_t__ LoUnit; scalar_t__ HiUnit; TYPE_1__* MaxContext; scalar_t__ PrevSuccess; scalar_t__ GlueCount; scalar_t__ UnitsStart; scalar_t__ Text; int Stamps; int FreeList; } ;
struct TYPE_10__ {int Shift; int Count; scalar_t__ Summ; } ;
struct TYPE_9__ {int Freq; scalar_t__ Symbol; } ;
struct TYPE_8__ {int NumStats; int SummFreq; int Stats; scalar_t__ Flags; scalar_t__ Suffix; } ;
typedef int Int32 ;
typedef TYPE_1__* CTX_PTR ;
typedef TYPE_2__ CPpmd_State ;
typedef TYPE_3__ CPpmd_See ;
typedef TYPE_4__ CPpmd8 ;
typedef scalar_t__ Byte ;


 scalar_t__ PPMD_BIN_SCALE ;
 int PPMD_PERIOD_BITS ;
 int REF (TYPE_2__*) ;
 int RESET_TEXT (int ) ;
 int SetSuccessor (TYPE_2__*,int ) ;
 scalar_t__ U2B (int) ;
 int UNIT_SIZE ;
 unsigned int* kInitBinEsc ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void RestartModel(CPpmd8 *p)
{
  unsigned i, k, m, r;

  memset(p->FreeList, 0, sizeof(p->FreeList));
  memset(p->Stamps, 0, sizeof(p->Stamps));
  RESET_TEXT(0);
  p->HiUnit = p->Text + p->Size;
  p->LoUnit = p->UnitsStart = p->HiUnit - p->Size / 8 / UNIT_SIZE * 7 * UNIT_SIZE;
  p->GlueCount = 0;

  p->OrderFall = p->MaxOrder;
  p->RunLength = p->InitRL = -(Int32)((p->MaxOrder < 12) ? p->MaxOrder : 12) - 1;
  p->PrevSuccess = 0;

  p->MinContext = p->MaxContext = (CTX_PTR)(p->HiUnit -= UNIT_SIZE);
  p->MinContext->Suffix = 0;
  p->MinContext->NumStats = 255;
  p->MinContext->Flags = 0;
  p->MinContext->SummFreq = 256 + 1;
  p->FoundState = (CPpmd_State *)p->LoUnit;
  p->LoUnit += U2B(256 / 2);
  p->MinContext->Stats = REF(p->FoundState);
  for (i = 0; i < 256; i++)
  {
    CPpmd_State *s = &p->FoundState[i];
    s->Symbol = (Byte)i;
    s->Freq = 1;
    SetSuccessor(s, 0);
  }

  for (i = m = 0; m < 25; m++)
  {
    while (p->NS2Indx[i] == m)
      i++;
    for (k = 0; k < 8; k++)
    {
      UInt16 val = (UInt16)(PPMD_BIN_SCALE - kInitBinEsc[k] / (i + 1));
      UInt16 *dest = p->BinSumm[m] + k;
      for (r = 0; r < 64; r += 8)
        dest[r] = val;
    }
  }

  for (i = m = 0; m < 24; m++)
  {
    while (p->NS2Indx[i + 3] == m + 3)
      i++;
    for (k = 0; k < 32; k++)
    {
      CPpmd_See *s = &p->See[m][k];
      s->Summ = (UInt16)((2 * i + 5) << (s->Shift = PPMD_PERIOD_BITS - 4));
      s->Count = 7;
    }
  }
}
