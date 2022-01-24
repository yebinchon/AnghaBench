#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_14__ {int /*<<< orphan*/  change_set; void* number; } ;
struct TYPE_15__ {TYPE_1__ id; void* expanded_size; void* size; int /*<<< orphan*/  has_sha1; int /*<<< orphan*/  sha1_digest; } ;
typedef  TYPE_2__ svn_fs_x__representation_t ;
struct TYPE_16__ {int /*<<< orphan*/  rep_cache_db; int /*<<< orphan*/  rep_sharing_allowed; } ;
typedef  TYPE_3__ svn_fs_x__data_t ;
struct TYPE_17__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_4__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_18__ {scalar_t__ kind; int /*<<< orphan*/  digest; } ;
typedef  TYPE_5__ svn_checksum_t ;
typedef  scalar_t__ svn_boolean_t ;
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
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC18(svn_fs_x__representation_t **rep_p,
                            svn_fs_t *fs,
                            svn_checksum_t *checksum,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_fs_x__representation_t *rep;

  FUNC1(ffd->rep_sharing_allowed);
  if (! ffd->rep_cache_db)
    FUNC0(FUNC11(fs, scratch_pool));

  /* We only allow SHA1 checksums in this table. */
  if (checksum->kind != svn_checksum_sha1)
    return FUNC7(SVN_ERR_BAD_CHECKSUM_KIND, NULL,
                            FUNC2("Only SHA1 checksums can be used as keys in the "
                              "rep_cache table.\n"));

  FUNC0(FUNC15(&stmt, ffd->rep_cache_db, STMT_GET_REP));
  FUNC0(FUNC12(stmt, "s",
                            FUNC5(checksum, scratch_pool)));

  FUNC0(FUNC17(&have_row, stmt));
  if (have_row)
    {
      rep = FUNC3(result_pool, sizeof(*rep));
      FUNC4(rep->sha1_digest, checksum->digest, sizeof(rep->sha1_digest));
      rep->has_sha1 = TRUE;
      rep->id.change_set = FUNC14(stmt, 0);
      rep->id.number = FUNC13(stmt, 1);
      rep->size = FUNC13(stmt, 2);
      rep->expanded_size = FUNC13(stmt, 3);
    }
  else
    rep = NULL;

  FUNC0(FUNC16(stmt));

  if (rep)
    {
      /* Check that REP refers to a revision that exists in FS. */
      svn_revnum_t revision = FUNC10(rep->id.change_set);
      svn_error_t *err = FUNC9(revision, fs,
                                                          scratch_pool);
      if (err)
        return FUNC8(SVN_ERR_FS_CORRUPT, err,
                   "Checksum '%s' in rep-cache is beyond HEAD",
                   FUNC6(checksum, scratch_pool));
    }

  *rep_p = rep;
  return SVN_NO_ERROR;
}