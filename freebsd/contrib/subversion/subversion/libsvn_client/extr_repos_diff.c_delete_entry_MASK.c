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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct edit_baton {int /*<<< orphan*/  revision; int /*<<< orphan*/  ra_session; int /*<<< orphan*/  pool; } ;
struct dir_baton {scalar_t__ skip_children; struct edit_baton* edit_baton; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct dir_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct dir_baton*,int /*<<< orphan*/ *) ; 
#define  svn_node_dir 129 
#define  svn_node_file 128 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(const char *path,
             svn_revnum_t base_revision,
             void *parent_baton,
             apr_pool_t *pool)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  svn_node_kind_t kind;
  apr_pool_t *scratch_pool;

  /* Process skips. */
  if (pb->skip_children)
    return SVN_NO_ERROR;

  scratch_pool = FUNC3(eb->pool);

  /* We need to know if this is a directory or a file */
  FUNC0(FUNC5(eb->ra_session, path, eb->revision, &kind,
                            scratch_pool));

  switch (kind)
    {
    case svn_node_file:
      {
        FUNC0(FUNC2(path, pb, scratch_pool));
        break;
      }
    case svn_node_dir:
      {
        FUNC0(FUNC1(path, pb, scratch_pool));
        break;
      }
    default:
      break;
    }

  FUNC4(scratch_pool);

  return SVN_NO_ERROR;
}