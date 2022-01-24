#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_16__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_17__ {TYPE_10__* strings; } ;
typedef  TYPE_3__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_18__ {int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;
struct TYPE_14__ {int (* cursor ) (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_4__ DBT ;
typedef  int /*<<< orphan*/  DBC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DB_CURRENT ; 
 int /*<<< orphan*/  DB_SET ; 
 int MAX_KEY_SIZE ; 
 char* NEXT_KEY_KEY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,char*) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_fs_t *fs,
                 const char **key,
                 trail_t *trail,
                 apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBC *cursor;
  char next_key[MAX_KEY_SIZE];
  apr_size_t key_len;
  int db_err;
  DBT query;
  DBT result;

  /* ### todo: see issue #409 for why bumping the key as part of this
     trail is problematic. */

  /* Open a cursor and move it to the 'next-key' value. We can then fetch
     the contents and use the cursor to overwrite those contents. Since
     this database allows duplicates, we can't do an arbitrary 'put' to
     write the new value -- that would append, not overwrite.  */

  FUNC12(trail, "strings", "cursor");
  FUNC2(FUNC0(fs, FUNC1("creating cursor for reading a string"),
                   bfd->strings->cursor(bfd->strings, trail->db_txn,
                                        &cursor, 0)));

  /* Advance the cursor to 'next-key' and read it. */

  db_err = FUNC6(cursor,
                           FUNC10(&query, NEXT_KEY_KEY),
                           FUNC9(&result),
                           DB_SET);
  if (db_err)
    {
      FUNC5(cursor);
      return FUNC0(fs, FUNC1("getting next-key value"), db_err);
    }

  FUNC11(&result, pool);
  *key = FUNC3(pool, result.data, result.size);

  /* Bump to future key. */
  key_len = result.size;
  FUNC8(result.data, &key_len, next_key);

  /* Shove the new key back into the database, at the cursor position. */
  db_err = FUNC7(cursor, &query,
                           FUNC10(&result, next_key),
                           DB_CURRENT);
  if (db_err)
    {
      FUNC5(cursor); /* ignore the error, the original is
                                    more important. */
      return FUNC0(fs, FUNC1("bumping next string key"), db_err);
    }

  return FUNC0(fs, FUNC1("closing string-reading cursor"),
                  FUNC5(cursor));
}