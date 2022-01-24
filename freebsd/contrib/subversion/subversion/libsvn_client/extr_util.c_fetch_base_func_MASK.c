#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct shim_callbacks_baton {int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  relpath_map; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(const char **filename,
                void *baton,
                const char *path,
                svn_revnum_t base_revision,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  struct shim_callbacks_baton *scb = baton;
  const char *local_abspath;
  svn_stream_t *pristine_stream;
  svn_stream_t *temp_stream;
  svn_error_t *err;

  local_abspath = FUNC3(scb->relpath_map, path);
  if (!local_abspath)
    {
      *filename = NULL;
      return SVN_NO_ERROR;
    }

  /* Reads the pristine of WORKING, not of BASE */
  err = FUNC6(&pristine_stream, scb->wc_ctx,
                                      local_abspath, scratch_pool,
                                      scratch_pool);
  if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
    {
      FUNC1(err);
      *filename = NULL;
      return SVN_NO_ERROR;
    }
  else if (err)
    return FUNC2(err);

  FUNC0(FUNC5(&temp_stream, filename, NULL,
                                 svn_io_file_del_on_pool_cleanup,
                                 result_pool, scratch_pool));
  FUNC0(FUNC4(pristine_stream, temp_stream, NULL, NULL,
                           scratch_pool));

  return SVN_NO_ERROR;
}