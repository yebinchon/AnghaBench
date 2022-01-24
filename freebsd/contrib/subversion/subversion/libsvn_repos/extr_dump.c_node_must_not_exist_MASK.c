#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct edit_baton {TYPE_1__* path_tracker; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/  revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_ALREADY_EXISTS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,struct edit_baton*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC4 (char const**,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(struct edit_baton *eb,
                    const char *path,
                    svn_revnum_t revision,
                    apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind = svn_node_none;

  /* in case the caller is trying something stupid ... */
  if (eb->path_tracker == NULL)
    return SVN_NO_ERROR;

  /* paths pertaining to the revision currently being processed must
     be translated / checked using our path tracker. */
  if (revision == eb->path_tracker->revision)
    FUNC4(&path, &revision, eb->path_tracker, path, scratch_pool);

  /* determine the node type (default: no such node) */
  if (path)
    FUNC0(FUNC2(&kind, eb, path, revision, scratch_pool));

  /* check results */
  if (kind != svn_node_none)
    return FUNC3(SVN_ERR_FS_ALREADY_EXISTS, NULL,
                             FUNC1("Path '%s' exists in r%ld."),
                             path, revision);

  return SVN_NO_ERROR;
}