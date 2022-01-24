#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_17__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  revision_t ;
typedef  int /*<<< orphan*/  recno ;
typedef  scalar_t__ db_recno_t ;
struct TYPE_18__ {TYPE_13__* revisions; } ;
typedef  TYPE_3__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_19__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_15__ {int (* get ) (TYPE_13__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_4__ DBT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int DB_NOTFOUND ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int FUNC4 (TYPE_13__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC13(revision_t **revision_p,
                    svn_fs_t *fs,
                    svn_revnum_t rev,
                    trail_t *trail,
                    apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  int db_err;
  DBT key, value;
  svn_skel_t *skel;
  revision_t *revision;

  /* Turn the revision number into a Berkeley DB record number.
     Revisions are numbered starting with zero; Berkeley DB record
     numbers begin with one.  */
  db_recno_t recno = (db_recno_t) rev + 1;

  if (!FUNC3(rev))
    return FUNC6(fs, rev);

  FUNC11(trail, "revisions", "get");
  db_err = bfd->revisions->get(bfd->revisions, trail->db_txn,
                               FUNC9(&key, &recno,
                                                    sizeof(recno)),
                               FUNC8(&value),
                               0);
  FUNC10(&value, pool);

  /* If there's no such revision, return an appropriately specific error.  */
  if (db_err == DB_NOTFOUND)
    return FUNC6(fs, rev);

  /* Handle any other error conditions.  */
  FUNC2(FUNC0(fs, FUNC1("reading filesystem revision"), db_err));

  /* Parse REVISION skel.  */
  skel = FUNC12(value.data, value.size, pool);
  if (! skel)
    return FUNC5(fs, rev);

  /* Convert skel to native type. */
  FUNC2(FUNC7(&revision, skel, pool));

  *revision_p = revision;
  return SVN_NO_ERROR;
}