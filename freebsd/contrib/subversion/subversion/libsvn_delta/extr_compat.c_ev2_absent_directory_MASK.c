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
struct ev2_dir_baton {int /*<<< orphan*/  eb; } ;
struct change_node {int /*<<< orphan*/  kind; int /*<<< orphan*/  action; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  RESTRUCTURE_ADD_ABSENT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 struct change_node* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_dir ; 

__attribute__((used)) static svn_error_t *
FUNC2(const char *path,
                     void *parent_baton,
                     apr_pool_t *scratch_pool)
{
  struct ev2_dir_baton *pb = parent_baton;
  const char *relpath = FUNC1(pb->eb, path, scratch_pool);
  struct change_node *change = FUNC0(pb->eb, relpath);

  /* ### assert that RESTRUCTURE is NONE or DELETE?  */
  change->action = RESTRUCTURE_ADD_ABSENT;
  change->kind = svn_node_dir;

  return SVN_NO_ERROR;
}