
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* pRow; } ;
struct TYPE_7__ {struct TYPE_7__* pNext; } ;
struct TYPE_6__ {TYPE_4__ sGraph; } ;
typedef TYPE_1__ ShellState ;
typedef TYPE_2__ EQPGraphRow ;


 int memset (TYPE_4__*,int ,int) ;
 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static void eqp_reset(ShellState *p){
  EQPGraphRow *pRow, *pNext;
  for(pRow = p->sGraph.pRow; pRow; pRow = pNext){
    pNext = pRow->pNext;
    sqlite3_free(pRow);
  }
  memset(&p->sGraph, 0, sizeof(p->sGraph));
}
