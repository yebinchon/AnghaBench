#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_12__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  (* svn_fs_progress_notify_func_t ) (scalar_t__,void*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
struct TYPE_13__ {scalar_t__ max_files_per_dir; int /*<<< orphan*/  min_unpacked_rev; } ;
typedef  TYPE_2__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC15(svn_fs_t *fs,
                               svn_revnum_t start,
                               svn_revnum_t end,
                               svn_fs_progress_notify_func_t notify_func,
                               void *notify_baton,
                               svn_cancel_func_t cancel_func,
                               void *cancel_baton,
                               apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_revnum_t revision, next_revision;
  apr_pool_t *iterpool = FUNC11(pool);

  for (revision = start; revision <= end; revision = next_revision)
    {
      svn_error_t *err = SVN_NO_ERROR;

      svn_revnum_t count = FUNC4(fs, revision);
      svn_revnum_t pack_start = FUNC8(fs, revision);
      svn_revnum_t pack_end = pack_start + count;

      FUNC10(iterpool);

      if (notify_func && (pack_start % ffd->max_files_per_dir == 0))
        notify_func(pack_start, notify_baton, iterpool);

      /* Check for external corruption to the indexes. */
      err = FUNC13(fs, pack_start, cancel_func,
                                   cancel_baton, iterpool);

      /* two-way index check */
      if (!err)
        err = FUNC1(fs, pack_start, pack_end - pack_start,
                                       cancel_func, cancel_baton, iterpool);
      if (!err)
        err = FUNC2(fs, pack_start, pack_end - pack_start,
                                       cancel_func, cancel_baton, iterpool);

      /* verify in-index checksums and types vs. actual rev / pack files */
      if (!err)
        err = FUNC3(fs, pack_start, pack_end - pack_start,
                                 cancel_func, cancel_baton, iterpool);

      /* ensure that revprops are available and accessible */
      if (!err)
        err = FUNC14(fs, pack_start, pack_end,
                              cancel_func, cancel_baton, iterpool);

      /* concurrent packing is one of the reasons why verification may fail.
         Make sure, we operate on up-to-date information. */
      if (err)
        {
          svn_error_t *err2
            = FUNC9(&ffd->min_unpacked_rev,
                                               fs, pool);

          /* Be careful to not leak ERR. */
          if (err2)
            return FUNC7(FUNC6(err, err2));
        }

      /* retry the whole shard if it got packed in the meantime */
      if (err && count != FUNC4(fs, revision))
        {
          FUNC5(err);

          /* We could simply assign revision here but the code below is
             more intuitive to maintainers. */
          next_revision = FUNC8(fs, revision);
        }
      else
        {
          FUNC0(err);
          next_revision = pack_end;
        }
    }

  FUNC12(iterpool);

  return SVN_NO_ERROR;
}