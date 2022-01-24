#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* zIdx; struct TYPE_5__* zEQP; struct TYPE_5__* pNext; } ;
typedef  TYPE_1__ IdxStatement ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(IdxStatement *pStatement, IdxStatement *pLast){
  IdxStatement *p;
  IdxStatement *pNext;
  for(p=pStatement; p!=pLast; p=pNext){
    pNext = p->pNext;
    FUNC0(p->zEQP);
    FUNC0(p->zIdx);
    FUNC0(p);
  }
}