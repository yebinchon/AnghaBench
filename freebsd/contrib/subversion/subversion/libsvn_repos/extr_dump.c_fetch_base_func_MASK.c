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
typedef  int /*<<< orphan*/  svn_fs_root_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct edit_baton {int /*<<< orphan*/  fs; scalar_t__ current_rev; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(const char **filename,
                void *baton,
                const char *path,
                svn_revnum_t base_revision,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;
  svn_stream_t *contents;
  svn_stream_t *file_stream;
  const char *tmp_filename;
  svn_error_t *err;
  svn_fs_root_t *fs_root;

  if (!FUNC1(base_revision))
    base_revision = eb->current_rev - 1;

  FUNC0(FUNC6(&fs_root, eb->fs, base_revision, scratch_pool));

  err = FUNC5(&contents, fs_root, path, scratch_pool);
  if (err && err->apr_err == SVN_ERR_FS_NOT_FOUND)
    {
      FUNC3(err);
      *filename = NULL;
      return SVN_NO_ERROR;
    }
  else if (err)
    return FUNC4(err);
  FUNC0(FUNC8(&file_stream, &tmp_filename, NULL,
                                 svn_io_file_del_on_pool_cleanup,
                                 scratch_pool, scratch_pool));
  FUNC0(FUNC7(contents, file_stream, NULL, NULL, scratch_pool));

  *filename = FUNC2(result_pool, tmp_filename);

  return SVN_NO_ERROR;
}