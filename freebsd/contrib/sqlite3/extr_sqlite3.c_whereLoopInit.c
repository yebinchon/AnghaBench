
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ wsFlags; int aLTermSpace; int nLSlot; scalar_t__ nLTerm; int aLTerm; } ;
typedef TYPE_1__ WhereLoop ;


 int ArraySize (int ) ;

__attribute__((used)) static void whereLoopInit(WhereLoop *p){
  p->aLTerm = p->aLTermSpace;
  p->nLTerm = 0;
  p->nLSlot = ArraySize(p->aLTermSpace);
  p->wsFlags = 0;
}
