#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int rc; TYPE_2__* pDestDb; TYPE_8__* pSrc; int /*<<< orphan*/  pDest; struct TYPE_11__* pNext; scalar_t__ isAttached; TYPE_2__* pSrcDb; } ;
typedef  TYPE_1__ sqlite3_backup ;
struct TYPE_12__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ sqlite3 ;
struct TYPE_13__ {int /*<<< orphan*/  nBackup; } ;

/* Variables and functions */
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_1__** FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(sqlite3_backup *p){
  sqlite3_backup **pp;                 /* Ptr to head of pagers backup list */
  sqlite3 *pSrcDb;                     /* Source database connection */
  int rc;                              /* Value to return */

  /* Enter the mutexes */
  if( p==0 ) return SQLITE_OK;
  pSrcDb = p->pSrcDb;
  FUNC9(pSrcDb->mutex);
  FUNC1(p->pSrc);
  if( p->pDestDb ){
    FUNC9(p->pDestDb->mutex);
  }

  /* Detach this backup from the source pager. */
  if( p->pDestDb ){
    p->pSrc->nBackup--;
  }
  if( p->isAttached ){
    pp = FUNC7(FUNC3(p->pSrc));
    FUNC0( pp!=0 );
    while( *pp!=p ){
      pp = &(*pp)->pNext;
      FUNC0( pp!=0 );
    }
    *pp = p->pNext;
  }

  /* If a transaction is still open on the Btree, roll it back. */
  FUNC4(p->pDest, SQLITE_OK, 0);

  /* Set the error code of the destination database handle. */
  rc = (p->rc==SQLITE_DONE) ? SQLITE_OK : p->rc;
  if( p->pDestDb ){
    FUNC5(p->pDestDb, rc);

    /* Exit the mutexes and free the backup context structure. */
    FUNC6(p->pDestDb);
  }
  FUNC2(p->pSrc);
  if( p->pDestDb ){
    /* EVIDENCE-OF: R-64852-21591 The sqlite3_backup object is created by a
    ** call to sqlite3_backup_init() and is destroyed by a call to
    ** sqlite3_backup_finish(). */
    FUNC8(p);
  }
  FUNC6(pSrcDb);
  return rc;
}