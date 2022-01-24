#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  counter; int /*<<< orphan*/ * result; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * file; } ;
typedef  TYPE_1__ to_sync_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_9__ {int /*<<< orphan*/  files; int /*<<< orphan*/  counter; } ;
typedef  TYPE_2__ svn_fs_x__batch_fsync_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_int32_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_CREATE ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(apr_file_t **file,
                   svn_fs_x__batch_fsync_t *batch,
                   const char *path,
                   apr_int32_t flags,
                   apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  apr_pool_t *pool;
  to_sync_t *to_sync;
#ifdef SVN_ON_POSIX
  svn_boolean_t is_new_file;
#endif

  /* If we already have a handle for PATH, return that. */
  to_sync = FUNC6(batch->files, path);
  if (to_sync)
    {
      *file = to_sync->file;
      return SVN_NO_ERROR;
    }

  /* Calling fsync in PATH is going to be expensive in any case, so we can
   * allow for some extra overhead figuring out whether the file already
   * exists.  If it doesn't, be sure to schedule parent folder updates, if
   * required on this platform.
   *
   * See svn_fs_x__batch_fsync_new_path() for when such extra fsyncs may be
   * needed at all. */

#ifdef SVN_ON_POSIX

  is_new_file = FALSE;
  if (flags & APR_CREATE)
    {
      svn_node_kind_t kind;
      /* We might actually be about to create a new file.
       * Check whether the file already exists. */
      SVN_ERR(svn_io_check_path(path, &kind, scratch_pool));
      is_new_file = kind == svn_node_none;
    }

#endif

  /* To be able to process each file in a separate thread, they must use
   * separate, thread-safe pools.  Allocating a sub-pool from the standard
   * memory pool achieves exactly that. */
  pool = FUNC10(NULL);
  err = FUNC9(file, path, flags, APR_OS_DEFAULT, pool);
  if (err)
    {
      FUNC11(pool);
      return FUNC4(err);
    }

  to_sync = FUNC2(pool, sizeof(*to_sync));
  to_sync->file = *file;
  to_sync->pool = pool;
  to_sync->result = SVN_NO_ERROR;
  to_sync->counter = batch->counter;

  FUNC7(batch->files,
                FUNC3(FUNC1(batch->files), path),
                to_sync);

  /* If we just created a new file, schedule any additional necessary fsyncs.
   * Note that this can only recurse once since the parent folder already
   * exists on disk. */
#ifdef SVN_ON_POSIX

  if (is_new_file)
    SVN_ERR(svn_fs_x__batch_fsync_new_path(batch, path, scratch_pool));

#endif

  return SVN_NO_ERROR;
}