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
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_MIME_TYPE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(const char **tmpfile1,
                 const char **tmpfile2,
                 svn_boolean_t *is_binary,
                 svn_fs_root_t *root1,
                 const char *path1,
                 svn_fs_root_t *root2,
                 const char *path2,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_string_t *mimetype;
  svn_stream_t *stream;

  /* Init the return values. */
  *tmpfile1 = NULL;
  *tmpfile2 = NULL;
  *is_binary = FALSE;

  FUNC1(path1 && path2);

  /* Check for binary mimetypes.  If either file has a binary
     mimetype, get outta here.  */
  if (root1)
    {
      FUNC0(FUNC3(&mimetype, root1, path1,
                               SVN_PROP_MIME_TYPE, scratch_pool));
      if (mimetype && FUNC4(mimetype->data))
        {
          *is_binary = TRUE;
          return SVN_NO_ERROR;
        }
    }
  if (root2)
    {
      FUNC0(FUNC3(&mimetype, root2, path2,
                               SVN_PROP_MIME_TYPE, scratch_pool));
      if (mimetype && FUNC4(mimetype->data))
        {
          *is_binary = TRUE;
          return SVN_NO_ERROR;
        }
    }

  /* Now, prepare the two temporary files, each of which will either
     be empty, or will have real contents.  */
  FUNC0(FUNC5(&stream, tmpfile1, NULL,
                                 svn_io_file_del_on_pool_cleanup,
                                 result_pool, scratch_pool));
  FUNC0(FUNC2(stream, root1, path1, scratch_pool));

  FUNC0(FUNC5(&stream, tmpfile2, NULL,
                                 svn_io_file_del_on_pool_cleanup,
                                 result_pool, scratch_pool));
  FUNC0(FUNC2(stream, root2, path2, scratch_pool));

  return SVN_NO_ERROR;
}