#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_x__representation_t ;
struct TYPE_10__ {int /*<<< orphan*/  rep_cache_db; scalar_t__ rep_sharing_allowed; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
typedef  int /*<<< orphan*/  svn_fs_txn_t ;
struct TYPE_11__ {TYPE_1__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {int /*<<< orphan*/ * reps_to_cache; int /*<<< orphan*/ * reps_pool; int /*<<< orphan*/ * reps_hash; int /*<<< orphan*/ * txn; TYPE_2__* fs; int /*<<< orphan*/ * new_rev_p; } ;
typedef  TYPE_3__ commit_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_SQLITE_ROLLBACK_FAILED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  commit_body ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(svn_revnum_t *new_rev_p,
                 svn_fs_t *fs,
                 svn_fs_txn_t *txn,
                 apr_pool_t *scratch_pool)
{
  commit_baton_t cb;
  svn_fs_x__data_t *ffd = fs->fsap_data;

  cb.new_rev_p = new_rev_p;
  cb.fs = fs;
  cb.txn = txn;

  if (ffd->rep_sharing_allowed)
    {
      cb.reps_to_cache = FUNC1(scratch_pool, 5,
                                        sizeof(svn_fs_x__representation_t *));
      cb.reps_hash = FUNC2(scratch_pool);
      cb.reps_pool = scratch_pool;
    }
  else
    {
      cb.reps_to_cache = NULL;
      cb.reps_hash = NULL;
      cb.reps_pool = NULL;
    }

  FUNC0(FUNC8(fs, commit_body, &cb, scratch_pool));

  /* At this point, *NEW_REV_P has been set, so errors below won't affect
     the success of the commit.  (See svn_fs_commit_txn().)  */

  if (ffd->rep_sharing_allowed)
    {
      svn_error_t *err;

      FUNC0(FUNC7(fs, scratch_pool));

      /* Write new entries to the rep-sharing database.
       *
       * We use an sqlite transaction to speed things up;
       * see <http://www.sqlite.org/faq.html#q19>.
       */
      /* ### A commit that touches thousands of files will starve other
             (reader/writer) commits for the duration of the below call.
             Maybe write in batches? */
      FUNC0(FUNC9(ffd->rep_cache_db));
      err = FUNC11(fs, cb.reps_to_cache, scratch_pool);
      err = FUNC10(ffd->rep_cache_db, err);

      if (FUNC4(err, SVN_ERR_SQLITE_ROLLBACK_FAILED))
        {
          /* Failed rollback means that our db connection is unusable, and
             the only thing we can do is close it.  The connection will be
             reopened during the next operation with rep-cache.db. */
          return FUNC5(
              FUNC3(err,
                                       FUNC6(fs)));
        }
      else if (err)
        return FUNC5(err);
    }

  return SVN_NO_ERROR;
}