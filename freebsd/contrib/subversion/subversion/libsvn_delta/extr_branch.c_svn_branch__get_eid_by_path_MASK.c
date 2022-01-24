#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  e_map; } ;
typedef  TYPE_1__ svn_element__tree_t ;
typedef  int /*<<< orphan*/  svn_branch__state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(const svn_branch__state_t *branch,
                            const char *path,
                            apr_pool_t *scratch_pool)
{
  svn_element__tree_t *elements;
  apr_hash_index_t *hi;

  /*SVN_ERR_ASSERT_NO_RETURN(branch->priv->is_flat);*/

  /* ### This is a crude, linear search */
  FUNC6(FUNC3(branch, &elements, scratch_pool));
  for (hi = FUNC0(scratch_pool, elements->e_map);
       hi; hi = FUNC1(hi))
    {
      int eid = FUNC4(hi);
      const char *this_path = FUNC5(elements, eid,
                                                                scratch_pool);

      if (! this_path)
        {
          /* Mapping is not complete; this element is in effect not present. */
          continue;
        }
      if (FUNC2(path, this_path) == 0)
        {
          return eid;
        }
    }

  return -1;
}