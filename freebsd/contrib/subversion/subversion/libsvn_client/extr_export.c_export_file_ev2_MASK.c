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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  rev; } ;
typedef  TYPE_1__ svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct edit_baton {char const* root_path; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct edit_baton*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_unknown ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(const char *from_url,
                const char *to_path,
                struct edit_baton *eb,
                svn_client__pathrev_t *loc,
                svn_ra_session_t *ra_session,
                svn_boolean_t overwrite,
                apr_pool_t *scratch_pool)
{
  apr_hash_t *props;
  svn_stream_t *tmp_stream;
  svn_node_kind_t to_kind;

  FUNC1(FUNC9(from_url));

  if (FUNC8(to_path))
    {
      to_path = FUNC12(from_url, scratch_pool);
      eb->root_path = to_path;
    }
  else
    {
      FUNC0(FUNC4(&to_path, from_url,
                                     TRUE, scratch_pool));
      eb->root_path = to_path;
    }

  FUNC0(FUNC7(to_path, &to_kind, scratch_pool));

  if ((to_kind == svn_node_file || to_kind == svn_node_unknown) &&
      ! overwrite)
    return FUNC6(SVN_ERR_ILLEGAL_TARGET, NULL,
                             FUNC2("Destination file '%s' exists, and "
                               "will not be overwritten unless forced"),
                             FUNC5(to_path, scratch_pool));
  else if (to_kind == svn_node_dir)
    return FUNC6(SVN_ERR_ILLEGAL_TARGET, NULL,
                             FUNC2("Destination '%s' exists. Cannot "
                               "overwrite directory with non-directory"),
                             FUNC5(to_path, scratch_pool));

  tmp_stream = FUNC11(scratch_pool);

  FUNC0(FUNC10(ra_session, "", loc->rev,
                          tmp_stream, NULL, &props, scratch_pool));

  /* Since you cannot actually root an editor at a file, we manually drive
   * a function of our editor. */
  FUNC0(FUNC3(eb, "", NULL, tmp_stream, props, SVN_INVALID_REVNUM,
                       scratch_pool));

  return SVN_NO_ERROR;
}