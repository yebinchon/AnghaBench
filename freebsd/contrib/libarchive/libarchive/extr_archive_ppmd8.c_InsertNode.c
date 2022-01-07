
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * Stamps; scalar_t__* FreeList; } ;
struct TYPE_4__ {int NU; scalar_t__ Next; int Stamp; } ;
typedef scalar_t__ CPpmd8_Node_Ref ;
typedef TYPE_1__ CPpmd8_Node ;
typedef TYPE_2__ CPpmd8 ;


 int EMPTY_NODE ;
 int I2U (unsigned int) ;
 scalar_t__ REF (void*) ;

__attribute__((used)) static void InsertNode(CPpmd8 *p, void *node, unsigned indx)
{
  ((CPpmd8_Node *)node)->Stamp = EMPTY_NODE;
  ((CPpmd8_Node *)node)->Next = (CPpmd8_Node_Ref)p->FreeList[indx];
  ((CPpmd8_Node *)node)->NU = I2U(indx);
  p->FreeList[indx] = REF(node);
  p->Stamps[indx]++;
}
