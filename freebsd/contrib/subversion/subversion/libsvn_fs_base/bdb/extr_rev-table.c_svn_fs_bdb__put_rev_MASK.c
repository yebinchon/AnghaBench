#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_11__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  revision_t ;
typedef  int /*<<< orphan*/  recno ;
typedef  scalar_t__ db_recno_t ;
struct TYPE_12__ {TYPE_7__* revisions; } ;
typedef  TYPE_3__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_13__ {int (* put ) (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  DBT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DB_APPEND ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_revnum_t *rev,
                    svn_fs_t *fs,
                    const revision_t *revision,
                    trail_t *trail,
                    apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  int db_err;
  db_recno_t recno = 0;
  svn_skel_t *skel;
  DBT key, value;

  /* Convert native type to skel. */
  FUNC2(FUNC10(&skel, revision, pool));

  if (FUNC3(*rev))
    {
      DBT query, result;

      /* Update the filesystem revision with the new skel. */
      recno = (db_recno_t) *rev + 1;
      FUNC9(trail, "revisions", "put");
      db_err = bfd->revisions->put
        (bfd->revisions, trail->db_txn,
         FUNC7(&query, &recno, sizeof(recno)),
         FUNC8(&result, skel, pool), 0);
      return FUNC0(fs, FUNC1("updating filesystem revision"), db_err);
    }

  FUNC9(trail, "revisions", "put");
  db_err = bfd->revisions->put(bfd->revisions, trail->db_txn,
                               FUNC6(&key, &recno),
                               FUNC8(&value, skel, pool),
                               DB_APPEND);
  FUNC2(FUNC0(fs, FUNC1("storing filesystem revision"), db_err));

  /* Turn the record number into a Subversion revision number.
     Revisions are numbered starting with zero; Berkeley DB record
     numbers begin with one.  */
  *rev = recno - 1;
  return SVN_NO_ERROR;
}