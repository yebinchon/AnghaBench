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
typedef  int /*<<< orphan*/  svn_element__tree_t ;
typedef  int /*<<< orphan*/  svn_branch__state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 char const* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

const char *
FUNC5(const svn_branch__state_t *branch,
                            int eid,
                            apr_pool_t *result_pool)
{
  svn_element__tree_t *elements;

  FUNC1(FUNC0(branch, eid));
  /*SVN_ERR_ASSERT_NO_RETURN(branch->priv->is_flat);*/

  FUNC4(FUNC2(branch, &elements, result_pool));
  return FUNC3(elements, eid, result_pool);
}