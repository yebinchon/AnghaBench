#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_13__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {TYPE_7__* strings; } ;
typedef  TYPE_3__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_15__ {int (* cursor ) (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ;int (* put ) (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  DBT ;
typedef  int /*<<< orphan*/  DBC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DB_NEXT_DUP ; 
 int DB_NOTFOUND ; 
 int /*<<< orphan*/  DB_SET ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,char const**,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,char*) ; 

svn_error_t *
FUNC12(svn_fs_t *fs,
                        const char **new_key,
                        const char *key,
                        trail_t *trail,
                        apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT query;
  DBT result;
  DBT copykey;
  DBC *cursor;
  int db_err;

  /* Copy off the old key in case the caller is sharing storage
     between the old and new keys. */
  const char *old_key = FUNC3(pool, key);

  FUNC2(FUNC4(fs, new_key, trail, pool));

  FUNC11(trail, "strings", "cursor");
  FUNC2(FUNC0(fs, FUNC1("creating cursor for reading a string"),
                   bfd->strings->cursor(bfd->strings, trail->db_txn,
                                        &cursor, 0)));

  FUNC10(&query, old_key);
  FUNC10(&copykey, *new_key);

  FUNC9(&result);

  /* Move to the first record and fetch its data (under BDB's mem mgmt). */
  db_err = FUNC8(cursor, &query, &result, DB_SET);
  if (db_err)
    {
      FUNC7(cursor);
      return FUNC0(fs, FUNC1("getting next-key value"), db_err);
    }

  while (1)
    {
      /* ### can we pass a BDB-provided buffer to another BDB function?
         ### they are supposed to have a duration up to certain points
         ### of calling back into BDB, but I'm not sure what the exact
         ### rules are. it is definitely nicer to use BDB buffers here
         ### to simplify things and reduce copies, but... hrm.
      */

      /* Write the data to the database */
      FUNC11(trail, "strings", "put");
      db_err = bfd->strings->put(bfd->strings, trail->db_txn,
                                 &copykey, &result, 0);
      if (db_err)
        {
          FUNC7(cursor);
          return FUNC0(fs, FUNC1("writing copied data"), db_err);
        }

      /* Read the next chunk. Terminate loop if we're done. */
      FUNC9(&result);
      db_err = FUNC8(cursor, &query, &result, DB_NEXT_DUP);
      if (db_err == DB_NOTFOUND)
        break;
      if (db_err)
        {
          FUNC7(cursor);
          return FUNC0(fs, FUNC1("fetching string data for a copy"), db_err);
        }
    }

  return FUNC0(fs, FUNC1("closing string-reading cursor"),
                  FUNC7(cursor));
}