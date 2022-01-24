#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_15__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
struct TYPE_20__ {TYPE_4__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_21__ {scalar_t__ kind; int /*<<< orphan*/  path; } ;
typedef  TYPE_3__ change_t ;
struct TYPE_22__ {TYPE_15__* changes; } ;
typedef  TYPE_4__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_23__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_18__ {int (* cursor ) (TYPE_15__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_5__ DBT ;
typedef  int /*<<< orphan*/  DBC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DB_NEXT_DUP ; 
 int DB_NOTFOUND ; 
 int /*<<< orphan*/  DB_SET ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC10 (TYPE_15__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,char*,char*) ; 
 scalar_t__ svn_fs_path_change_delete ; 
 scalar_t__ svn_fs_path_change_replace ; 
 char* FUNC20 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC25(apr_hash_t **changes_p,
                          svn_fs_t *fs,
                          const char *key,
                          trail_t *trail,
                          apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBC *cursor;
  DBT query, result;
  int db_err = 0, db_c_err = 0;
  svn_error_t *err = SVN_NO_ERROR;
  apr_hash_t *changes = FUNC5(pool);
  apr_pool_t *subpool = FUNC22(pool);
  apr_pool_t *iterpool = FUNC22(pool);
  apr_hash_t *deletions = FUNC5(subpool);

  /* Get a cursor on the first record matching KEY, and then loop over
     the records, adding them to the return array. */
  FUNC19(trail, "changes", "cursor");
  FUNC2(FUNC0(fs, FUNC1("creating cursor for reading changes"),
                   bfd->changes->cursor(bfd->changes, trail->db_txn,
                                        &cursor, 0)));

  /* Advance the cursor to the key that we're looking for. */
  FUNC17(&query, key);
  FUNC16(&result);
  db_err = FUNC12(cursor, &query, &result, DB_SET);
  if (! db_err)
    FUNC18(&result, pool);

  while (! db_err)
    {
      change_t *change;
      svn_skel_t *result_skel;

      /* Clear the per-iteration subpool. */
      FUNC21(iterpool);

      /* RESULT now contains a change record associated with KEY.  We
         need to parse that skel into an change_t structure ...  */
      result_skel = FUNC24(result.data, result.size, iterpool);
      if (! result_skel)
        {
          err = FUNC13(SVN_ERR_FS_CORRUPT, NULL,
                                  FUNC3("Error reading changes for key '%s'"),
                                  key);
          goto cleanup;
        }
      err = FUNC15(&change, result_skel, iterpool);
      if (err)
        goto cleanup;

      /* ... and merge it with our return hash.  */
      err = FUNC9(changes, deletions, change);
      if (err)
        goto cleanup;

      /* Now, if our change was a deletion or replacement, we have to
         blow away any changes thus far on paths that are (or, were)
         children of this path.
         ### i won't bother with another iteration pool here -- at
             most we talking about a few extra dups of paths into what
             is already a temporary subpool.
      */
      if ((change->kind == svn_fs_path_change_delete)
          || (change->kind == svn_fs_path_change_replace))
        {
          apr_hash_index_t *hi;

          for (hi = FUNC4(iterpool, changes);
               hi;
               hi = FUNC6(hi))
            {
              /* KEY is the path. */
              const void *hashkey;
              apr_ssize_t klen;
              const char *child_relpath;

              FUNC8(hi, &hashkey, &klen, NULL);

              /* If we come across our own path, ignore it.
                 If we come across a child of our path, remove it. */
              child_relpath = FUNC20(change->path, hashkey);
              if (child_relpath && *child_relpath)
                FUNC7(changes, hashkey, klen, NULL);
            }
        }

      /* Advance the cursor to the next record with this same KEY, and
         fetch that record. */
      FUNC16(&result);
      db_err = FUNC12(cursor, &query, &result, DB_NEXT_DUP);
      if (! db_err)
        FUNC18(&result, pool);
    }

  /* Destroy the per-iteration subpool. */
  FUNC23(iterpool);
  FUNC23(subpool);

  /* If there are no (more) change records for this KEY, we're
     finished.  Just return the (possibly empty) array.  Any other
     error, however, needs to get handled appropriately.  */
  if (db_err && (db_err != DB_NOTFOUND))
    err = FUNC0(fs, FUNC1("fetching changes"), db_err);

 cleanup:
  /* Close the cursor. */
  db_c_err = FUNC11(cursor);

  /* If we had an error prior to closing the cursor, return the error. */
  if (err)
    return FUNC14(err);

  /* If our only error thus far was when we closed the cursor, return
     that error. */
  if (db_c_err)
    FUNC2(FUNC0(fs, FUNC1("closing changes cursor"), db_c_err));

  /* Finally, set our return variable and get outta here. */
  *changes_p = changes;
  return SVN_NO_ERROR;
}