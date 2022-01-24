#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct get_writable_proto_rev_baton {void** lockcookie; int /*<<< orphan*/  txn_id; } ;
struct TYPE_3__ {scalar_t__ being_written; } ;
typedef  TYPE_1__ fs_fs_shared_txn_data_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_CREATE ; 
 int APR_FLOCK_EXCLUSIVE ; 
 int APR_FLOCK_NONBLOCK ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int APR_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_REP_BEING_WRITTEN ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_fs_t *fs, const void *baton, apr_pool_t *pool)
{
  const struct get_writable_proto_rev_baton *b = baton;
  void **lockcookie = b->lockcookie;
  fs_fs_shared_txn_data_t *txn = FUNC4(fs, &b->txn_id, TRUE);

  /* First, ensure that no thread in this process (including this one)
     is currently writing to this transaction's proto-rev file. */
  if (txn->being_written)
    return FUNC7(SVN_ERR_FS_REP_BEING_WRITTEN, NULL,
                             FUNC2("Cannot write to the prototype revision file "
                               "of transaction '%s' because a previous "
                               "representation is currently being written by "
                               "this process"),
                             FUNC9(&b->txn_id, pool));


  /* We know that no thread in this process is writing to the proto-rev
     file, and by extension, that no thread in this process is holding a
     lock on the prototype revision lock file.  It is therefore safe
     for us to attempt to lock this file, to see if any other process
     is holding a lock. */

  {
    apr_file_t *lockfile;
    apr_status_t apr_err;
    const char *lockfile_path
      = FUNC10(fs, &b->txn_id, pool);

    /* Open the proto-rev lockfile, creating it if necessary, as it may
       not exist if the transaction dates from before the lockfiles were
       introduced.

       ### We'd also like to use something like svn_io_file_lock2(), but
           that forces us to create a subpool just to be able to unlock
           the file, which seems a waste. */
    FUNC1(FUNC12(&lockfile, lockfile_path,
                             APR_WRITE | APR_CREATE, APR_OS_DEFAULT, pool));

    apr_err = FUNC3(lockfile,
                            APR_FLOCK_EXCLUSIVE | APR_FLOCK_NONBLOCK);
    if (apr_err)
      {
        FUNC6(FUNC11(lockfile, pool));

        if (FUNC0(apr_err))
          return FUNC7(SVN_ERR_FS_REP_BEING_WRITTEN, NULL,
                                   FUNC2("Cannot write to the prototype revision "
                                     "file of transaction '%s' because a "
                                     "previous representation is currently "
                                     "being written by another process"),
                                   FUNC9(&b->txn_id,
                                                             pool));

        return FUNC8(apr_err,
                                  FUNC2("Can't get exclusive lock on file '%s'"),
                                  FUNC5(lockfile_path, pool));
      }

    *lockcookie = lockfile;
  }

  /* We've successfully locked the transaction; mark it as such. */
  txn->being_written = TRUE;

  return SVN_NO_ERROR;
}