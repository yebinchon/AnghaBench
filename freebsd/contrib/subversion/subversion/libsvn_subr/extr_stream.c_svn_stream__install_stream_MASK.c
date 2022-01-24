#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {struct install_baton_t* baton; } ;
typedef  TYPE_2__ svn_stream_t ;
struct TYPE_20__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_18__ {int /*<<< orphan*/  file; } ;
struct install_baton_t {int /*<<< orphan*/  tmp_path; TYPE_1__ baton_apr; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_UNSUPPORTED_FEATURE ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (TYPE_3__*,TYPE_3__*) ; 
 TYPE_3__* FUNC7 (TYPE_3__*) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(svn_stream_t *install_stream,
                           const char *final_abspath,
                           svn_boolean_t make_parents,
                           apr_pool_t *scratch_pool)
{
  struct install_baton_t *ib = install_stream->baton;
  svn_error_t *err;

  FUNC2(FUNC4(final_abspath));
#ifdef WIN32
  err = svn_io__win_rename_open_file(ib->baton_apr.file,  ib->tmp_path,
                                     final_abspath, scratch_pool);
  if (make_parents && err && APR_STATUS_IS_ENOENT(err->apr_err))
    {
      svn_error_t *err2;

      err2 = svn_io_make_dir_recursively(svn_dirent_dirname(final_abspath,
                                                    scratch_pool),
                                         scratch_pool);

      if (err2)
        return svn_error_trace(svn_error_compose_create(err, err2));
      else
        svn_error_clear(err);

      err = svn_io__win_rename_open_file(ib->baton_apr.file, ib->tmp_path,
                                         final_abspath, scratch_pool);
    }

  /* ### rhuijben: I wouldn't be surprised if we later find out that we
                   have to fall back to close+rename on some specific
                   error values here, to support some non standard NAS
                   and filesystem scenarios. */
  if (err && err->apr_err == SVN_ERR_UNSUPPORTED_FEATURE)
    {
      /* Rename open files is not supported on this platform: fallback to
         svn_io_file_rename2(). */
      svn_error_clear(err);
      err = SVN_NO_ERROR;
    }
  else
    {
      return svn_error_compose_create(err,
                                      svn_io_file_close(ib->baton_apr.file,
                                                        scratch_pool));
    }
#endif

  /* Close temporary file. */
  FUNC1(FUNC9(ib->baton_apr.file, scratch_pool));

  err = FUNC10(ib->tmp_path, final_abspath, FALSE, scratch_pool);

  /* A missing directory is too common to not cover here. */
  if (make_parents && err && FUNC0(err->apr_err))
    {
      svn_error_t *err2;

      err2 = FUNC11(FUNC3(final_abspath,
                                                            scratch_pool),
                                         scratch_pool);

      if (err2)
        /* Creating directory didn't work: Return all errors */
        return FUNC7(FUNC6(err, err2));
      else
        /* We could create a directory: retry install */
        FUNC5(err);

      FUNC1(FUNC10(ib->tmp_path, final_abspath, FALSE, scratch_pool));
    }
  else
    FUNC1(err);

  return SVN_NO_ERROR;
}