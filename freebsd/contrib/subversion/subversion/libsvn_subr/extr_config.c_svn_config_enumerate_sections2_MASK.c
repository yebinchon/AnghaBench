#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sections; } ;
typedef  TYPE_1__ svn_config_t ;
typedef  int /*<<< orphan*/  (* svn_config_section_enumerator2_t ) (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ cfg_section_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(svn_config_t *cfg,
                               svn_config_section_enumerator2_t callback,
                               void *baton, apr_pool_t *pool)
{
  apr_hash_index_t *sec_ndx;
  apr_pool_t *iteration_pool;
  int count = 0;

  iteration_pool = FUNC4(pool);
  for (sec_ndx = FUNC0(pool, cfg->sections);
       sec_ndx != NULL;
       sec_ndx = FUNC1(sec_ndx))
    {
      cfg_section_t *sec = FUNC2(sec_ndx);

      ++count;
      FUNC3(iteration_pool);
      if (!callback(sec->name, baton, iteration_pool))
        break;
    }
  FUNC5(iteration_pool);

  return count;
}