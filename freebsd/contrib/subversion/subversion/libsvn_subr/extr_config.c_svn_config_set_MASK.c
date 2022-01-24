#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  option_names_case_sensitive; scalar_t__ read_only; } ;
typedef  TYPE_1__ svn_config_t ;
struct TYPE_14__ {int /*<<< orphan*/  options; } ;
typedef  TYPE_2__ cfg_section_t ;
struct TYPE_15__ {int /*<<< orphan*/  hash_key; int /*<<< orphan*/  state; int /*<<< orphan*/  value; } ;
typedef  TYPE_3__ cfg_option_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_3__* FUNC2 (TYPE_1__*,char const*,char const*,TYPE_2__**) ; 
 int /*<<< orphan*/  option_state_needs_expanding ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 

void
FUNC7(svn_config_t *cfg,
               const char *section, const char *option,
               const char *value)
{
  cfg_section_t *sec;
  cfg_option_t *opt;

  /* Ignore write attempts to r/o configurations.
   *
   * Since we should never try to modify r/o data, trigger an assertion
   * in debug mode.
   */
#ifdef SVN_DEBUG
  SVN_ERR_ASSERT_NO_RETURN(!cfg->read_only);
#endif
  if (cfg->read_only)
    return;

  FUNC3(cfg);

  opt = FUNC2(cfg, section, option, &sec);
  if (opt != NULL)
    {
      /* Replace the option's value. */
      opt->value = FUNC1(cfg->pool, value);
      opt->state = option_state_needs_expanding;
      return;
    }

  /* Create a new option */
  FUNC5(&opt, option, value,
                           cfg->option_names_case_sensitive,
                           cfg->pool);

  if (sec == NULL)
    {
      /* Even the section doesn't exist. Create it. */
      sec = FUNC4(cfg, section);
    }

  FUNC6(sec->options, opt->hash_key, opt);
}