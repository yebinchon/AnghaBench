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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  rev; } ;
typedef  TYPE_1__ svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct file_baton {char const* path; int /*<<< orphan*/  tmp_stream; int /*<<< orphan*/ * pool; int /*<<< orphan*/  tmppath; int /*<<< orphan*/  repos_root_url; int /*<<< orphan*/  url; struct edit_baton* edit_baton; } ;
struct edit_baton {char const* root_path; int /*<<< orphan*/  repos_root_url; int /*<<< orphan*/  root_url; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 struct file_baton* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct file_baton*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct file_baton*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_unknown ; 
 scalar_t__ FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC19 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC20(const char *from_url,
            const char *to_path,
            struct edit_baton *eb,
            svn_client__pathrev_t *loc,
            svn_ra_session_t *ra_session,
            svn_boolean_t overwrite,
            apr_pool_t *scratch_pool)
{
  apr_hash_t *props;
  apr_hash_index_t *hi;
  struct file_baton *fb = FUNC8(scratch_pool, sizeof(*fb));
  svn_node_kind_t to_kind;

  FUNC1(FUNC16(from_url));

  if (FUNC15(to_path))
    {
      to_path = FUNC19(from_url, scratch_pool);
      eb->root_path = to_path;
    }
  else
    {
      FUNC0(FUNC3(&to_path, from_url,
                                     TRUE, scratch_pool));
      eb->root_path = to_path;
    }

  FUNC0(FUNC14(to_path, &to_kind, scratch_pool));

  if ((to_kind == svn_node_file || to_kind == svn_node_unknown) &&
      ! overwrite)
    return FUNC13(SVN_ERR_ILLEGAL_TARGET, NULL,
                             FUNC2("Destination file '%s' exists, and "
                               "will not be overwritten unless forced"),
                             FUNC12(to_path, scratch_pool));
  else if (to_kind == svn_node_dir)
    return FUNC13(SVN_ERR_ILLEGAL_TARGET, NULL,
                             FUNC2("Destination '%s' exists. Cannot "
                               "overwrite directory with non-directory"),
                             FUNC12(to_path, scratch_pool));

  /* Since you cannot actually root an editor at a file, we
   * manually drive a few functions of our editor. */

  /* This is the equivalent of a parentless add_file(). */
  fb->edit_baton = eb;
  fb->path = eb->root_path;
  fb->url = eb->root_url;
  fb->pool = scratch_pool;
  fb->repos_root_url = eb->repos_root_url;

  /* Copied from apply_textdelta(). */
  FUNC0(FUNC18(&fb->tmp_stream, &fb->tmppath,
                                 FUNC11(fb->path, scratch_pool),
                                 svn_io_file_del_none,
                                 fb->pool, fb->pool));

  /* Step outside the editor-likeness for a moment, to actually talk
   * to the repository. */
  /* ### note: the stream will not be closed */
  FUNC0(FUNC17(ra_session, "", loc->rev,
                          fb->tmp_stream,
                          NULL, &props, scratch_pool));

  /* Push the props into change_file_prop(), to update the file_baton
   * with information. */
  for (hi = FUNC4(scratch_pool, props); hi; hi = FUNC5(hi))
    {
      const char *propname = FUNC6(hi);
      const svn_string_t *propval = FUNC7(hi);

      FUNC0(FUNC9(fb, propname, propval, scratch_pool));
    }

  /* And now just use close_file() to do all the keyword and EOL
   * work, and put the file into place. */
  FUNC0(FUNC10(fb, NULL, scratch_pool));

  return SVN_NO_ERROR;
}