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
struct TYPE_8__ {scalar_t__ pgnoRoot; int /*<<< orphan*/  curFlags; struct TYPE_8__* pNext; TYPE_1__* pBt; } ;
struct TYPE_7__ {TYPE_2__* pCursor; int /*<<< orphan*/  mutex; } ;
typedef  scalar_t__ Pgno ;
typedef  TYPE_1__ BtShared ;
typedef  TYPE_2__ BtCursor ;

/* Variables and functions */
 int /*<<< orphan*/  BTCF_Multiple ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,scalar_t__,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(BtShared *pBt, Pgno iRoot, BtCursor *pExcept){
  BtCursor *p;
  FUNC0( FUNC2(pBt->mutex) );
  FUNC0( pExcept==0 || pExcept->pBt==pBt );
  for(p=pBt->pCursor; p; p=p->pNext){
    if( p!=pExcept && (0==iRoot || p->pgnoRoot==iRoot) ) break;
  }
  if( p ) return FUNC1(p, iRoot, pExcept);
  if( pExcept ) pExcept->curFlags &= ~BTCF_Multiple;
  return SQLITE_OK;
}