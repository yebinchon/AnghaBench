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
typedef  int svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 int /*<<< orphan*/  SVN_ERR_NODE_UNEXPECTED_KIND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char const* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,...) ; 
#define  svn_node_dir 129 
#define  svn_node_file 128 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC6(const char *name,
                                const char *path,
                                svn_node_kind_t node_kind,
                                apr_pool_t *pool)
{
  const char *path_display
    = FUNC3(path) ? path : FUNC1(path, pool);

  switch (node_kind)
    {
    case svn_node_dir:
      if (! FUNC4(name)
          && FUNC5(name))
        return FUNC2(SVN_ERR_ILLEGAL_TARGET, NULL,
                                 FUNC0("Cannot set '%s' on a directory ('%s')"),
                                 name, path_display);
      break;
    case svn_node_file:
      if (! FUNC5(name)
          && FUNC4(name))
        return FUNC2(SVN_ERR_ILLEGAL_TARGET, NULL,
                                 FUNC0("Cannot set '%s' on a file ('%s')"),
                                 name,
                                 path_display);
      break;
    default:
      return FUNC2(SVN_ERR_NODE_UNEXPECTED_KIND, NULL,
                               FUNC0("'%s' is not a file or directory"),
                               path_display);
    }

  return SVN_NO_ERROR;
}