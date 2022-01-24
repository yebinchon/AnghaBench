#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int iEqpId; int iParentId; struct TYPE_8__* pNext; int /*<<< orphan*/  zText; } ;
struct TYPE_6__ {TYPE_3__* pLast; TYPE_3__* pRow; } ;
struct TYPE_7__ {TYPE_1__ sGraph; int /*<<< orphan*/  out; scalar_t__ autoEQPtest; } ;
typedef  TYPE_2__ ShellState ;
typedef  TYPE_3__ EQPGraphRow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__* FUNC2 (int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,char const*) ; 

__attribute__((used)) static void FUNC5(ShellState *p, int iEqpId, int p2, const char *zText){
  EQPGraphRow *pNew;
  int nText = FUNC3(zText);
  if( p->autoEQPtest ){
    FUNC4(p->out, "%d,%d,%s\n", iEqpId, p2, zText);
  }
  pNew = FUNC2( sizeof(*pNew) + nText );
  if( pNew==0 ) FUNC1();
  pNew->iEqpId = iEqpId;
  pNew->iParentId = p2;
  FUNC0(pNew->zText, zText, nText+1);
  pNew->pNext = 0;
  if( p->sGraph.pLast ){
    p->sGraph.pLast->pNext = pNew;
  }else{
    p->sGraph.pRow = pNew;
  }
  p->sGraph.pLast = pNew;
}