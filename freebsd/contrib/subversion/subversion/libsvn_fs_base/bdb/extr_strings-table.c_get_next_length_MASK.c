#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ apr_size_t ;
struct TYPE_6__ {int flags; scalar_t__ size; scalar_t__ ulen; } ;
typedef  TYPE_1__ DBT ;
typedef  int /*<<< orphan*/  DBC ;

/* Variables and functions */
 int DB_DBT_PARTIAL ; 
 int DB_DBT_USERMEM ; 
 int /*<<< orphan*/  DB_NEXT_DUP ; 
 int SVN_BDB_DB_BUFFER_SMALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(apr_size_t *length, DBC *cursor, DBT *query)
{
  DBT result;
  int db_err;

  /* Set up the DBT for reading the length of the record. */
  FUNC2(&result);
  result.ulen = 0;
  result.flags |= DB_DBT_USERMEM;

  /* Note: this may change the QUERY DBT, but that's okay: we're going
     to be sticking with the same key anyways.  */
  db_err = FUNC1(cursor, query, &result, DB_NEXT_DUP);

  /* Note that we exit on DB_NOTFOUND. The caller uses that to end a loop. */
  if (db_err)
    {
      DBT rerun;

      if (db_err != SVN_BDB_DB_BUFFER_SMALL)
        {
          FUNC0(cursor);
          return db_err;
        }

      /* We got an SVN_BDB_DB_BUFFER_SMALL (typical since we have a
         zero length buf), so we need to re-run the operation to make
         it happen. */
      FUNC2(&rerun);
      rerun.flags |= DB_DBT_USERMEM | DB_DBT_PARTIAL;
      db_err = FUNC1(cursor, query, &rerun, DB_NEXT_DUP);
      if (db_err)
        FUNC0(cursor);
    }

  /* ### this cast might not be safe? */
  *length = (apr_size_t) result.size;
  return db_err;
}