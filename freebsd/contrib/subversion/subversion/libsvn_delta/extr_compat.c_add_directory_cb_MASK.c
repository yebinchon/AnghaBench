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
typedef  int /*<<< orphan*/  svn_error_t ;
struct editor_baton {int /*<<< orphan*/  edit_pool; int /*<<< orphan*/  changes; } ;
struct change_node {int /*<<< orphan*/  props; int /*<<< orphan*/  deleting; int /*<<< orphan*/  kind; int /*<<< orphan*/  action; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  RESTRUCTURE_ADD ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 struct change_node* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC2(void *baton,
                 const char *relpath,
                 const apr_array_header_t *children,
                 apr_hash_t *props,
                 svn_revnum_t replaces_rev,
                 apr_pool_t *scratch_pool)
{
  struct editor_baton *eb = baton;
  struct change_node *change = FUNC0(relpath, eb->changes);

  change->action = RESTRUCTURE_ADD;
  change->kind = svn_node_dir;
  change->deleting = replaces_rev;
  change->props = FUNC1(props, eb->edit_pool);

  return SVN_NO_ERROR;
}