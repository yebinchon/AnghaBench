
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int count ;
typedef scalar_t__ UInt32 ;
struct TYPE_6__ {scalar_t__ LoUnit; scalar_t__ HiUnit; int * Stamps; int * FreeList; int * UnitsStart; } ;
struct TYPE_5__ {scalar_t__ Stamp; int Next; int NU; } ;
typedef int CPpmd8_Node_Ref ;
typedef TYPE_1__ CPpmd8_Node ;
typedef TYPE_2__ CPpmd8 ;
typedef int Byte ;


 scalar_t__ EMPTY_NODE ;
 TYPE_1__* NODE (int ) ;
 int PPMD_NUM_INDEXES ;
 size_t U2I (int ) ;
 int memset (scalar_t__*,int ,int) ;

__attribute__((used)) static void ExpandTextArea(CPpmd8 *p)
{
  UInt32 count[PPMD_NUM_INDEXES];
  unsigned i;
  memset(count, 0, sizeof(count));
  if (p->LoUnit != p->HiUnit)
    ((CPpmd8_Node *)p->LoUnit)->Stamp = 0;

  {
    CPpmd8_Node *node = (CPpmd8_Node *)p->UnitsStart;
    for (; node->Stamp == EMPTY_NODE; node += node->NU)
    {
      node->Stamp = 0;
      count[U2I(node->NU)]++;
    }
    p->UnitsStart = (Byte *)node;
  }

  for (i = 0; i < PPMD_NUM_INDEXES; i++)
  {
    CPpmd8_Node_Ref *next = (CPpmd8_Node_Ref *)&p->FreeList[i];
    while (count[i] != 0)
    {
      CPpmd8_Node *node = NODE(*next);
      while (node->Stamp == 0)
      {
        *next = node->Next;
        node = NODE(*next);
        p->Stamps[i]--;
        if (--count[i] == 0)
          break;
      }
      next = &node->Next;
    }
  }
}
