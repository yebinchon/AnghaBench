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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3_blob ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_6__ {TYPE_1__* db; int /*<<< orphan*/ * pStmt; } ;
typedef  TYPE_2__ Incrblob ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(sqlite3_blob *pBlob){
  Incrblob *p = (Incrblob *)pBlob;
  int rc;
  sqlite3 *db;

  if( p ){
    sqlite3_stmt *pStmt = p->pStmt;
    db = p->db;
    FUNC2(db->mutex);
    FUNC0(db, p);
    FUNC3(db->mutex);
    rc = FUNC1(pStmt);
  }else{
    rc = SQLITE_OK;
  }
  return rc;
}