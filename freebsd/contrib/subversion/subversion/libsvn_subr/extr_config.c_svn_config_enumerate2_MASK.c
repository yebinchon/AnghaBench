#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_config_t ;
typedef  int /*<<< orphan*/  (* svn_config_enumerator2_t ) (int /*<<< orphan*/ ,char const*,void*,int /*<<< orphan*/ *) ;
struct TYPE_7__ {int /*<<< orphan*/  options; } ;
typedef  TYPE_1__ cfg_section_t ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ cfg_option_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (char const**,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(svn_config_t *cfg, const char *section,
                      svn_config_enumerator2_t callback, void *baton,
                      apr_pool_t *pool)
{
  cfg_section_t *sec;
  apr_hash_index_t *opt_ndx;
  apr_pool_t *iteration_pool;
  int count;

  FUNC3(cfg, section, NULL, &sec);
  if (sec == NULL)
    return 0;

  iteration_pool = FUNC6(pool);
  count = 0;
  for (opt_ndx = FUNC0(pool, sec->options);
       opt_ndx != NULL;
       opt_ndx = FUNC1(opt_ndx))
    {
      cfg_option_t *opt = FUNC2(opt_ndx);
      const char *temp_value;

      ++count;
      FUNC4(&temp_value, cfg, sec, opt, NULL);
      FUNC5(iteration_pool);
      if (!callback(opt->name, temp_value, baton, iteration_pool))
        break;
    }
  FUNC7(iteration_pool);

  return count;
}