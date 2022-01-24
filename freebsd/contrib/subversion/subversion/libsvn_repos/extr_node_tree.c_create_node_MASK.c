#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char action; struct TYPE_5__* parent; int /*<<< orphan*/  name; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ svn_repos_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  svn_node_unknown ; 

__attribute__((used)) static svn_repos_node_t *
FUNC2(const char *name,
            svn_repos_node_t *parent,
            apr_pool_t *pool)
{
  svn_repos_node_t *node = FUNC0(pool, sizeof(*node));
  node->action = 'R';
  node->kind = svn_node_unknown;
  node->name = FUNC1(pool, name);
  node->parent = parent;
  return node;
}