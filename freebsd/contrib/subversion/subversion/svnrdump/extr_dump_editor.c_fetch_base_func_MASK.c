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
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct dump_edit_baton {int /*<<< orphan*/  ra_session; scalar_t__ current_revision; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(const char **filename,
                void *baton,
                const char *path,
                svn_revnum_t base_revision,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  struct dump_edit_baton *eb = baton;
  svn_stream_t *fstream;
  svn_error_t *err;

  if (path[0] == '/')
    path += 1;

  if (! FUNC1(base_revision))
    base_revision = eb->current_revision - 1;

  FUNC0(FUNC6(&fstream, filename, NULL,
                                 svn_io_file_del_on_pool_cleanup,
                                 result_pool, scratch_pool));

  err = FUNC4(eb->ra_session, path, base_revision,
                        fstream, NULL, NULL, scratch_pool);
  if (err && err->apr_err == SVN_ERR_FS_NOT_FOUND)
    {
      FUNC2(err);
      FUNC0(FUNC5(fstream));

      *filename = NULL;
      return SVN_NO_ERROR;
    }
  else if (err)
    return FUNC3(err);

  FUNC0(FUNC5(fstream));

  return SVN_NO_ERROR;
}