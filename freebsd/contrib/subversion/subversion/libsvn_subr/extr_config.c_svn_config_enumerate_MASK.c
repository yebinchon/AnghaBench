#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ svn_config_t ;
typedef  int /*<<< orphan*/  (* svn_config_enumerator_t ) (int /*<<< orphan*/ ,char const*,void*) ;
struct TYPE_12__ {int /*<<< orphan*/  options; } ;
typedef  TYPE_2__ cfg_section_t ;
struct TYPE_13__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ cfg_option_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (char const**,TYPE_1__*,TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(svn_config_t *cfg, const char *section,
                     svn_config_enumerator_t callback, void *baton)
{
  cfg_section_t *sec;
  apr_hash_index_t *opt_ndx;
  int count;
  apr_pool_t *subpool;

  FUNC3(cfg, section, NULL, &sec);
  if (sec == NULL)
    return 0;

  subpool = FUNC5(cfg->pool);
  count = 0;
  for (opt_ndx = FUNC0(subpool, sec->options);
       opt_ndx != NULL;
       opt_ndx = FUNC1(opt_ndx))
    {
      cfg_option_t *opt = FUNC2(opt_ndx);
      const char *temp_value;

      ++count;
      FUNC4(&temp_value, cfg, sec, opt, NULL);
      if (!callback(opt->name, temp_value, baton))
        break;
    }

  FUNC6(subpool);
  return count;
}