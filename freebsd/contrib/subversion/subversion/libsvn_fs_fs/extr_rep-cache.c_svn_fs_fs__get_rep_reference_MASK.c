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

/* Type definitions */
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
struct TYPE_15__ {TYPE_4__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_16__ {scalar_t__ kind; int /*<<< orphan*/  digest; } ;
typedef  TYPE_2__ svn_checksum_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_17__ {int /*<<< orphan*/  revision; void* expanded_size; void* size; void* item_index; int /*<<< orphan*/  has_sha1; int /*<<< orphan*/  sha1_digest; int /*<<< orphan*/  txn_id; } ;
typedef  TYPE_3__ representation_t ;
struct TYPE_18__ {int /*<<< orphan*/  rep_cache_db; int /*<<< orphan*/  rep_sharing_allowed; } ;
typedef  TYPE_4__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_GET_REP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_BAD_CHECKSUM_KIND ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 void* FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC19(representation_t **rep_p,
                             svn_fs_t *fs,
                             svn_checksum_t *checksum,
                             apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  representation_t *rep;

  FUNC1(ffd->rep_sharing_allowed);
  if (! ffd->rep_cache_db)
    FUNC0(FUNC12(fs, pool));

  /* We only allow SHA1 checksums in this table. */
  if (checksum->kind != svn_checksum_sha1)
    return FUNC7(SVN_ERR_BAD_CHECKSUM_KIND, NULL,
                            FUNC2("Only SHA1 checksums can be used as keys in the "
                              "rep_cache table.\n"));

  FUNC0(FUNC16(&stmt, ffd->rep_cache_db, STMT_GET_REP));
  FUNC0(FUNC13(stmt, "s",
                            FUNC5(checksum, pool)));

  FUNC0(FUNC18(&have_row, stmt));
  if (have_row)
    {
      rep = FUNC3(pool, sizeof(*rep));
      FUNC11(&(rep->txn_id));
      FUNC4(rep->sha1_digest, checksum->digest, sizeof(rep->sha1_digest));
      rep->has_sha1 = TRUE;
      rep->revision = FUNC15(stmt, 0);
      rep->item_index = FUNC14(stmt, 1);
      rep->size = FUNC14(stmt, 2);
      rep->expanded_size = FUNC14(stmt, 3);
    }
  else
    rep = NULL;

  FUNC0(FUNC17(stmt));

  if (rep)
    {
      svn_error_t *err;

      FUNC0(FUNC10(fs, rep, pool));

      /* Check that REP refers to a revision that exists in FS. */
      err = FUNC9(rep->revision, fs, pool);
      if (err)
        return FUNC8(SVN_ERR_FS_CORRUPT, err,
                                 "Checksum '%s' in rep-cache is beyond HEAD",
                                 FUNC6(checksum,
                                                                 pool));
    }

  *rep_p = rep;
  return SVN_NO_ERROR;
}