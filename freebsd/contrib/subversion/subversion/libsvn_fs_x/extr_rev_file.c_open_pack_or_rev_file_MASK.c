#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_14__ {int /*<<< orphan*/  start_revision; } ;
struct TYPE_15__ {TYPE_1__ file_info; int /*<<< orphan*/  stream; int /*<<< orphan*/ * file; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_2__ svn_fs_x__revision_file_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_16__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_int32_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_BUFFERED ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int APR_WRITE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_SUCH_REVISION ; 
 TYPE_3__* SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_3__* FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_fs_x__revision_file_t *file,
                      svn_boolean_t writable,
                      apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_boolean_t retry = FALSE;
  svn_fs_t *fs = file->fs;
  svn_revnum_t rev = file->file_info.start_revision;
  apr_pool_t *file_pool = FUNC4(file);

  do
    {
      const char *path = FUNC9(fs, rev, scratch_pool);
      apr_file_t *apr_file;
      apr_int32_t flags = writable
                        ? APR_READ | APR_WRITE | APR_BUFFERED
                        : APR_READ | APR_BUFFERED;

      /* We may have to *temporarily* enable write access. */
      err = writable ? FUNC3(path, file_pool, scratch_pool)
                     : SVN_NO_ERROR;

      /* open the revision file in buffered r/o or r/w mode */
      if (!err)
        err = FUNC11(&apr_file, path, flags, APR_OS_DEFAULT,
                               file_pool);

      if (!err)
        {
          file->file = apr_file;
          file->stream = FUNC12(apr_file, TRUE,
                                                  file_pool);

          return SVN_NO_ERROR;
        }

      if (err && FUNC0(err->apr_err))
        {
          /* Could not open the file. This may happen if the
            * file once existed but got packed later. */
          FUNC5(err);

          /* if that was our 2nd attempt, leave it at that. */
          if (retry)
            return FUNC6(SVN_ERR_FS_NO_SUCH_REVISION, NULL,
                                     FUNC2("No such revision %ld"), rev);

          /* We failed for the first time. Refresh cache & retry. */
          FUNC1(FUNC10(fs, scratch_pool));
          file->file_info.start_revision = FUNC8(fs, rev);

          retry = TRUE;
        }
      else
        {
          retry = FALSE;
        }
    }
  while (retry);

  return FUNC7(err);
}