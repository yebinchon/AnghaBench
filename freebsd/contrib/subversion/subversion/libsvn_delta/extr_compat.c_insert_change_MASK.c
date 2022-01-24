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
struct change_node {void* deleting; void* changing; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 void* SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 struct change_node* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 struct change_node* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct change_node*) ; 

__attribute__((used)) static struct change_node *
FUNC5(const char *relpath,
              apr_hash_t *changes)
{
  apr_pool_t *result_pool;
  struct change_node *change;

  change = FUNC3(changes, relpath);
  if (change != NULL)
    return change;

  result_pool = FUNC0(changes);

  /* Return an empty change. Callers will tweak as needed.  */
  change = FUNC1(result_pool, sizeof(*change));
  change->changing = SVN_INVALID_REVNUM;
  change->deleting = SVN_INVALID_REVNUM;

  FUNC4(changes, FUNC2(result_pool, relpath), change);

  return change;
}