#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
typedef  int svn_boolean_t ;
struct svn_wc__db_info_t {int status; scalar_t__ kind; scalar_t__ moved_here; } ;
struct edit_baton_t {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  diff_pristine; int /*<<< orphan*/  processor; int /*<<< orphan*/  db; int /*<<< orphan*/  anchor_abspath; scalar_t__ ignore_ancestry; } ;
struct dir_baton_t {scalar_t__ depth; int /*<<< orphan*/  pdb; int /*<<< orphan*/  relpath; int /*<<< orphan*/  local_abspath; scalar_t__ deletes; scalar_t__ local_info; scalar_t__ skip_children; int /*<<< orphan*/  added; struct edit_baton_t* eb; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct dir_baton_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char) ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_infinity ; 
 scalar_t__ svn_depth_unknown ; 
 char* FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 struct svn_wc__db_info_t* FUNC8 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  svn_wc__db_status_added 131 
#define  svn_wc__db_status_deleted 130 
#define  svn_wc__db_status_incomplete 129 
#define  svn_wc__db_status_normal 128 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC14(struct dir_baton_t *pb,
                  const char *name,
                  apr_pool_t *scratch_pool)
{
  struct edit_baton_t *eb = pb->eb;
  const struct svn_wc__db_info_t *info;
  const char *child_abspath;
  const char *moved_from_relpath;
  svn_boolean_t repos_delete = (pb->deletes
                                && FUNC8(pb->deletes, name));

  FUNC3(!FUNC5(name, '/'));
  FUNC3(!pb->added || eb->ignore_ancestry);

  if (pb->skip_children)
    return SVN_NO_ERROR;

  FUNC1(FUNC4(pb, scratch_pool));

  info = FUNC8(pb->local_info, name);

  if (info == NULL || FUNC0(info->status))
    return SVN_NO_ERROR;

  switch (info->status)
    {
      case svn_wc__db_status_normal:
      case svn_wc__db_status_incomplete:
        if (!repos_delete)
          return SVN_NO_ERROR; /* Local and remote */
        FUNC9(pb->deletes, name, NULL);
        break;

      case svn_wc__db_status_deleted:
        if (!(eb->diff_pristine && repos_delete))
          return SVN_NO_ERROR;
        break;

      case svn_wc__db_status_added:
      default:
        break;
    }

  child_abspath = FUNC6(pb->local_abspath, name, scratch_pool);

  if (info->moved_here)
    {
      const char *moved_from_abspath;

      FUNC1(FUNC11(&moved_from_abspath,
                                    NULL, NULL, NULL,
                                    eb->db, child_abspath,
                                    scratch_pool, scratch_pool));
      FUNC2(moved_from_abspath != NULL);

      moved_from_relpath = FUNC7(
                                    eb->anchor_abspath,
                                    moved_from_abspath);
    }
  else
    moved_from_relpath = NULL;

  if (info->kind == svn_node_dir)
    {
      svn_depth_t depth ;

      if (pb->depth == svn_depth_infinity || pb->depth == svn_depth_unknown)
        depth = pb->depth;
      else
        depth = svn_depth_empty;

      FUNC1(FUNC12(
                      eb->db,
                      child_abspath,
                      FUNC10(pb->relpath, name, scratch_pool),
                      repos_delete ? svn_depth_infinity : depth,
                      moved_from_relpath,
                      eb->processor, pb->pdb,
                      eb->diff_pristine,
                      eb->cancel_func, eb->cancel_baton,
                      scratch_pool));
    }
  else
    FUNC1(FUNC13(
                      eb->db,
                      child_abspath,
                      FUNC10(pb->relpath, name, scratch_pool),
                      moved_from_relpath,
                      eb->processor, pb->pdb,
                      eb->diff_pristine,
                      eb->cancel_func, eb->cancel_baton,
                      scratch_pool));

  return SVN_NO_ERROR;
}