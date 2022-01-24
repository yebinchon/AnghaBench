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
struct TYPE_3__ {scalar_t__ kind; char action; struct TYPE_3__* sibling; int /*<<< orphan*/  name; struct TYPE_3__* child; scalar_t__ prop_mod; } ;
typedef  TYPE_1__ svn_repos_node_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_repos_node_t *node,
                        const char *path /* UTF-8! */,
                        apr_pool_t *pool)
{
  svn_repos_node_t *tmp_node;
  svn_boolean_t print_me = FALSE;
  const char *full_path;
  apr_pool_t *iterpool;

  FUNC0(FUNC1(NULL));

  if (! node)
    return SVN_NO_ERROR;

  /* Not a directory?  We're not interested. */
  if (node->kind != svn_node_dir)
    return SVN_NO_ERROR;

  /* Got prop mods?  Excellent. */
  if (node->prop_mod)
    print_me = TRUE;

  /* Fly through the list of children, checking for modified files. */
  tmp_node = node->child;
  while (tmp_node && (! print_me))
    {
      if ((tmp_node->kind == svn_node_file)
           || (tmp_node->action == 'A')
           || (tmp_node->action == 'D'))
        {
          print_me = TRUE;
        }
      tmp_node = tmp_node->sibling;
    }

  /* Print the node if it qualifies. */
  if (print_me)
    {
      FUNC0(FUNC2(pool, "%s/\n", path));
    }

  /* Return here if the node has no children. */
  tmp_node = node->child;
  if (! tmp_node)
    return SVN_NO_ERROR;

  /* Recursively handle the node's children. */
  iterpool = FUNC5(pool);
  while (tmp_node)
    {
      FUNC4(iterpool);
      full_path = FUNC3(path, tmp_node->name, iterpool);
      FUNC0(FUNC7(tmp_node, full_path, iterpool));
      tmp_node = tmp_node->sibling;
    }
  FUNC6(iterpool);

  return SVN_NO_ERROR;
}