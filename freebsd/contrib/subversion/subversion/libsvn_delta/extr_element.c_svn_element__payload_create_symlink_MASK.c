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
struct TYPE_5__ {int /*<<< orphan*/  target; int /*<<< orphan*/ * props; int /*<<< orphan*/  kind; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_1__ svn_element__payload_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  svn_node_symlink ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_element__payload_t *
FUNC6(apr_hash_t *props,
                                    const char *target,
                                    apr_pool_t *result_pool)
{
  svn_element__payload_t *new_payload
    = FUNC1(result_pool, sizeof(*new_payload));

  FUNC0(target);

  new_payload->pool = result_pool;
  new_payload->kind = svn_node_symlink;
  new_payload->props = props ? FUNC5(props, result_pool) : NULL;
  new_payload->target = FUNC2(result_pool, target);
  FUNC3(FUNC4(new_payload));
  return new_payload;
}