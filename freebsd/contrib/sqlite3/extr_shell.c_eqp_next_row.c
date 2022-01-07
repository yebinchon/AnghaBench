
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int iParentId; struct TYPE_9__* pNext; } ;
struct TYPE_7__ {TYPE_3__* pRow; } ;
struct TYPE_8__ {TYPE_1__ sGraph; } ;
typedef TYPE_2__ ShellState ;
typedef TYPE_3__ EQPGraphRow ;



__attribute__((used)) static EQPGraphRow *eqp_next_row(ShellState *p, int iEqpId, EQPGraphRow *pOld){
  EQPGraphRow *pRow = pOld ? pOld->pNext : p->sGraph.pRow;
  while( pRow && pRow->iParentId!=iEqpId ) pRow = pRow->pNext;
  return pRow;
}
