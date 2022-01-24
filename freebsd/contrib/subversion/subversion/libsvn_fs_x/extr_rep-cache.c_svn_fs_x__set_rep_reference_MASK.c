#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
struct TYPE_21__ {scalar_t__ number; scalar_t__ change_set; } ;
struct TYPE_22__ {scalar_t__ expanded_size; scalar_t__ size; TYPE_1__ id; int /*<<< orphan*/  has_sha1; int /*<<< orphan*/  sha1_digest; } ;
typedef  TYPE_2__ svn_fs_x__representation_t ;
struct TYPE_23__ {int /*<<< orphan*/  rep_cache_db; int /*<<< orphan*/  rep_sharing_allowed; } ;
typedef  TYPE_3__ svn_fs_x__data_t ;
struct TYPE_24__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_4__ svn_fs_t ;
struct TYPE_25__ {scalar_t__ apr_err; } ;
typedef  TYPE_5__ svn_error_t ;
struct TYPE_26__ {int /*<<< orphan*/  digest; int /*<<< orphan*/  kind; } ;
typedef  TYPE_6__ svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SET_REP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_BAD_CHECKSUM_KIND ; 
 scalar_t__ SVN_ERR_SQLITE_CONSTRAINT ; 
 TYPE_5__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**,TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(svn_fs_t *fs,
                            svn_fs_x__representation_t *rep,
                            apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_sqlite__stmt_t *stmt;
  svn_error_t *err;
  svn_checksum_t checksum;
  checksum.kind = svn_checksum_sha1;
  checksum.digest = rep->sha1_digest;

  FUNC1(ffd->rep_sharing_allowed);
  if (! ffd->rep_cache_db)
    FUNC0(FUNC8(fs, scratch_pool));

  /* We only allow SHA1 checksums in this table. */
  if (! rep->has_sha1)
    return FUNC5(SVN_ERR_BAD_CHECKSUM_KIND, NULL,
                            FUNC2("Only SHA1 checksums can be used as keys in the "
                              "rep_cache table.\n"));

  FUNC0(FUNC10(&stmt, ffd->rep_cache_db, STMT_SET_REP));
  FUNC0(FUNC9(stmt, "siiii",
                            FUNC3(&checksum, scratch_pool),
                            (apr_int64_t) rep->id.change_set,
                            (apr_int64_t) rep->id.number,
                            (apr_int64_t) rep->size,
                            (apr_int64_t) rep->expanded_size));

  err = FUNC11(NULL, stmt);
  if (err)
    {
      svn_fs_x__representation_t *old_rep;

      if (err->apr_err != SVN_ERR_SQLITE_CONSTRAINT)
        return FUNC6(err);

      FUNC4(err);

      /* Constraint failed so the mapping for SHA1_CHECKSUM->REP
         should exist.  If so that's cool -- just do nothing.  If not,
         that's a red flag!  */
      FUNC0(FUNC7(&old_rep, fs, &checksum,
                                          scratch_pool, scratch_pool));

      if (!old_rep)
        {
          /* Something really odd at this point, we failed to insert the
             checksum AND failed to read an existing checksum.  Do we need
             to flag this? */
        }
    }

  return SVN_NO_ERROR;
}