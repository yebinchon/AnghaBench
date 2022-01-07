
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {char* zText; scalar_t__ pNext; } ;
struct TYPE_8__ {scalar_t__ pRow; scalar_t__* zPrefix; } ;
struct TYPE_9__ {TYPE_1__ sGraph; int out; } ;
typedef TYPE_2__ ShellState ;
typedef TYPE_3__ EQPGraphRow ;


 int eqp_render_level (TYPE_2__*,int ) ;
 int eqp_reset (TYPE_2__*) ;
 int sqlite3_free (TYPE_3__*) ;
 int utf8_printf (int ,char*,...) ;

__attribute__((used)) static void eqp_render(ShellState *p){
  EQPGraphRow *pRow = p->sGraph.pRow;
  if( pRow ){
    if( pRow->zText[0]=='-' ){
      if( pRow->pNext==0 ){
        eqp_reset(p);
        return;
      }
      utf8_printf(p->out, "%s\n", pRow->zText+3);
      p->sGraph.pRow = pRow->pNext;
      sqlite3_free(pRow);
    }else{
      utf8_printf(p->out, "QUERY PLAN\n");
    }
    p->sGraph.zPrefix[0] = 0;
    eqp_render_level(p, 0);
    eqp_reset(p);
  }
}
