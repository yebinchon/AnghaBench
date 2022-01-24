#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int iLvl; int iRowid; scalar_t__ nLvl; scalar_t__ nBase; scalar_t__ zBase; TYPE_2__* zPath; TYPE_2__* aLvl; } ;
typedef  TYPE_1__ fsdir_cursor ;
struct TYPE_6__ {struct TYPE_6__* zDir; scalar_t__ pDir; } ;
typedef  TYPE_2__ FsdirLevel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(fsdir_cursor *pCur){
  int i;
  for(i=0; i<=pCur->iLvl; i++){
    FsdirLevel *pLvl = &pCur->aLvl[i];
    if( pLvl->pDir ) FUNC0(pLvl->pDir);
    FUNC1(pLvl->zDir);
  }
  FUNC1(pCur->zPath);
  FUNC1(pCur->aLvl);
  pCur->aLvl = 0;
  pCur->zPath = 0;
  pCur->zBase = 0;
  pCur->nBase = 0;
  pCur->nLvl = 0;
  pCur->iLvl = -1;
  pCur->iRowid = 1;
}