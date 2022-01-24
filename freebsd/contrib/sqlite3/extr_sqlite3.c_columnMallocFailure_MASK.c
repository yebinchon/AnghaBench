#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_3__ {TYPE_2__* db; int /*<<< orphan*/  rc; } ;
typedef  TYPE_1__ Vdbe ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(sqlite3_stmt *pStmt)
{
  /* If malloc() failed during an encoding conversion within an
  ** sqlite3_column_XXX API, then set the return code of the statement to
  ** SQLITE_NOMEM. The next call to _step() (if any) will return SQLITE_ERROR
  ** and _finalize() will return NOMEM.
  */
  Vdbe *p = (Vdbe *)pStmt;
  if( p ){
    FUNC0( p->db!=0 );
    FUNC0( FUNC2(p->db->mutex) );
    p->rc = FUNC1(p->db, p->rc);
    FUNC3(p->db->mutex);
  }
}