#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_12__ {scalar_t__ pIndex; } ;
struct TYPE_11__ {scalar_t__ needFree; } ;
struct TYPE_14__ {TYPE_2__ btree; TYPE_1__ vtab; } ;
struct TYPE_13__ {int nLTerm; int wsFlags; TYPE_8__ u; struct TYPE_13__* aLTerm; } ;
typedef  TYPE_3__ WhereLoop ;

/* Variables and functions */
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int WHERE_AUTO_INDEX ; 
 int WHERE_LOOP_XFER_SZ ; 
 int WHERE_VIRTUALTABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC4(sqlite3 *db, WhereLoop *pTo, WhereLoop *pFrom){
  FUNC2(db, pTo);
  if( FUNC3(db, pTo, pFrom->nLTerm) ){
    FUNC1(&pTo->u, 0, sizeof(pTo->u));
    return SQLITE_NOMEM_BKPT;
  }
  FUNC0(pTo, pFrom, WHERE_LOOP_XFER_SZ);
  FUNC0(pTo->aLTerm, pFrom->aLTerm, pTo->nLTerm*sizeof(pTo->aLTerm[0]));
  if( pFrom->wsFlags & WHERE_VIRTUALTABLE ){
    pFrom->u.vtab.needFree = 0;
  }else if( (pFrom->wsFlags & WHERE_AUTO_INDEX)!=0 ){
    pFrom->u.btree.pIndex = 0;
  }
  return SQLITE_OK;
}