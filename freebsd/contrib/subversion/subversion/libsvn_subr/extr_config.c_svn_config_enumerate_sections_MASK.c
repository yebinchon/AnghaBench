#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sections; int /*<<< orphan*/  x_pool; } ;
typedef  TYPE_1__ svn_config_t ;
typedef  int /*<<< orphan*/  (* svn_config_section_enumerator_t ) (int /*<<< orphan*/ ,void*) ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ cfg_section_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(svn_config_t *cfg,
                              svn_config_section_enumerator_t callback,
                              void *baton)
{
  apr_hash_index_t *sec_ndx;
  int count = 0;
  apr_pool_t *subpool = FUNC3(cfg->x_pool);

  for (sec_ndx = FUNC0(subpool, cfg->sections);
       sec_ndx != NULL;
       sec_ndx = FUNC1(sec_ndx))
    {
      void *sec_ptr;
      cfg_section_t *sec;

      FUNC2(sec_ndx, NULL, NULL, &sec_ptr);
      sec = sec_ptr;
      ++count;
      if (!callback(sec->name, baton))
        break;
    }

  FUNC4(subpool);
  return count;
}