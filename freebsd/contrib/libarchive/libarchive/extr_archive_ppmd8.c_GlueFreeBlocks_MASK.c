#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int GlueCount; scalar_t__ LoUnit; scalar_t__ HiUnit; scalar_t__* FreeList; int /*<<< orphan*/  Stamps; } ;
struct TYPE_7__ {scalar_t__ Stamp; scalar_t__ NU; scalar_t__ Next; } ;
typedef  scalar_t__ CPpmd8_Node_Ref ;
typedef  TYPE_1__ CPpmd8_Node ;
typedef  TYPE_2__ CPpmd8 ;

/* Variables and functions */
 scalar_t__ EMPTY_NODE ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,unsigned int) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 unsigned int PPMD_NUM_INDEXES ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(CPpmd8 *p)
{
  CPpmd8_Node_Ref head = 0;
  CPpmd8_Node_Ref *prev = &head;
  unsigned i;

  p->GlueCount = 1 << 13;
  FUNC4(p->Stamps, 0, sizeof(p->Stamps));
  
  /* Order-0 context is always at top UNIT, so we don't need guard NODE at the end.
     All blocks up to p->LoUnit can be free, so we need guard NODE at LoUnit. */
  if (p->LoUnit != p->HiUnit)
    ((CPpmd8_Node *)p->LoUnit)->Stamp = 0;

  /* Glue free blocks */
  for (i = 0; i < PPMD_NUM_INDEXES; i++)
  {
    CPpmd8_Node_Ref next = (CPpmd8_Node_Ref)p->FreeList[i];
    p->FreeList[i] = 0;
    while (next != 0)
    {
      CPpmd8_Node *node = FUNC2(next);
      if (node->NU != 0)
      {
        CPpmd8_Node *node2;
        *prev = next;
        prev = &(node->Next);
        while ((node2 = node + node->NU)->Stamp == EMPTY_NODE)
        {
          node->NU += node2->NU;
          node2->NU = 0;
        }
      }
      next = node->Next;
    }
  }
  *prev = 0;
  
  /* Fill lists of free blocks */
  while (head != 0)
  {
    CPpmd8_Node *node = FUNC2(head);
    unsigned nu;
    head = node->Next;
    nu = node->NU;
    if (nu == 0)
      continue;
    for (; nu > 128; nu -= 128, node += 128)
      FUNC1(p, node, PPMD_NUM_INDEXES - 1);
    if (FUNC0(i = FUNC3(nu)) != nu)
    {
      unsigned k = FUNC0(--i);
      FUNC1(p, node + k, nu - k - 1);
    }
    FUNC1(p, node, i);
  }
}