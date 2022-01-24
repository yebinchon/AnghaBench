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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  e_map; } ;
typedef  TYPE_1__ svn_element__tree_t ;
typedef  int /*<<< orphan*/  svn_element__content_t ;
typedef  int /*<<< orphan*/  svn_branch__state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_branch__state_t *to_branch,
                            const svn_element__tree_t *elements,
                            apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  for (hi = FUNC1(scratch_pool, elements->e_map);
       hi; hi = FUNC2(hi))
    {
      int this_eid = FUNC5(hi);
      svn_element__content_t *this_element = FUNC3(hi);

      FUNC0(FUNC4(to_branch, this_eid,
                                            this_element, scratch_pool));
    }

  return SVN_NO_ERROR;
}