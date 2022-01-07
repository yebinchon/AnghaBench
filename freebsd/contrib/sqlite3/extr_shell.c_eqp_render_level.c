
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {char* zText; int iEqpId; } ;
struct TYPE_8__ {scalar_t__* zPrefix; } ;
struct TYPE_9__ {TYPE_1__ sGraph; int out; } ;
typedef TYPE_2__ ShellState ;
typedef TYPE_3__ EQPGraphRow ;


 TYPE_3__* eqp_next_row (TYPE_2__*,int,TYPE_3__*) ;
 int memcpy (scalar_t__*,char*,int) ;
 int strlen30 (scalar_t__*) ;
 int utf8_printf (int ,char*,scalar_t__*,char*,char*) ;

__attribute__((used)) static void eqp_render_level(ShellState *p, int iEqpId){
  EQPGraphRow *pRow, *pNext;
  int n = strlen30(p->sGraph.zPrefix);
  char *z;
  for(pRow = eqp_next_row(p, iEqpId, 0); pRow; pRow = pNext){
    pNext = eqp_next_row(p, iEqpId, pRow);
    z = pRow->zText;
    utf8_printf(p->out, "%s%s%s\n", p->sGraph.zPrefix,
                pNext ? "|--" : "`--", z);
    if( n<(int)sizeof(p->sGraph.zPrefix)-7 ){
      memcpy(&p->sGraph.zPrefix[n], pNext ? "|  " : "   ", 4);
      eqp_render_level(p, pRow->iEqpId);
      p->sGraph.zPrefix[n] = 0;
    }
  }
}
