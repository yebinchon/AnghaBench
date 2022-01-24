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
struct TYPE_10__ {char* zText; scalar_t__ pNext; } ;
struct TYPE_8__ {scalar_t__ pRow; scalar_t__* zPrefix; } ;
struct TYPE_9__ {TYPE_1__ sGraph; int /*<<< orphan*/  out; } ;
typedef  TYPE_2__ ShellState ;
typedef  TYPE_3__ EQPGraphRow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC4(ShellState *p){
  EQPGraphRow *pRow = p->sGraph.pRow;
  if( pRow ){
    if( pRow->zText[0]=='-' ){
      if( pRow->pNext==0 ){
        FUNC1(p);
        return;
      }
      FUNC3(p->out, "%s\n", pRow->zText+3);
      p->sGraph.pRow = pRow->pNext;
      FUNC2(pRow);
    }else{
      FUNC3(p->out, "QUERY PLAN\n");
    }
    p->sGraph.zPrefix[0] = 0;
    FUNC0(p, 0);
    FUNC1(p);
  }
}