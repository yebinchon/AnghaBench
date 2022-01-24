#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* zText; int iEqpId; } ;
struct TYPE_8__ {scalar_t__* zPrefix; } ;
struct TYPE_9__ {TYPE_1__ sGraph; int /*<<< orphan*/  out; } ;
typedef  TYPE_2__ ShellState ;
typedef  TYPE_3__ EQPGraphRow ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,char*,int) ; 
 int FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__*,char*,char*) ; 

__attribute__((used)) static void FUNC4(ShellState *p, int iEqpId){
  EQPGraphRow *pRow, *pNext;
  int n = FUNC2(p->sGraph.zPrefix);
  char *z;
  for(pRow = FUNC0(p, iEqpId, 0); pRow; pRow = pNext){
    pNext = FUNC0(p, iEqpId, pRow);
    z = pRow->zText;
    FUNC3(p->out, "%s%s%s\n", p->sGraph.zPrefix,
                pNext ? "|--" : "`--", z);
    if( n<(int)sizeof(p->sGraph.zPrefix)-7 ){
      FUNC1(&p->sGraph.zPrefix[n], pNext ? "|  " : "   ", 4);
      FUNC4(p, pRow->iEqpId);
      p->sGraph.zPrefix[n] = 0;
    }
  }
}