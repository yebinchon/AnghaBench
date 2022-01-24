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
struct TYPE_7__ {TYPE_2__* tmp_value; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ svn_config_t ;
typedef  int /*<<< orphan*/  cfg_section_t ;
typedef  int /*<<< orphan*/  cfg_option_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,char const*,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char const*,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char const**,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char const*) ; 

void
FUNC7(svn_config_t *cfg, const char **valuep,
               const char *section, const char *option,
               const char *default_value)
{
  *valuep = default_value;
  if (cfg)
    {
      cfg_section_t *sec;
      cfg_option_t *opt = FUNC1(cfg, section, option, &sec);
      if (opt != NULL)
        {
          FUNC2(valuep, cfg, sec, opt, NULL);
        }
      else
        /* before attempting to expand an option, check for the placeholder.
         * If there is none, there is no point in calling expand_option_value.
         */
        if (default_value && FUNC3(default_value, '%'))
          {
            apr_pool_t *tmp_pool = FUNC4(cfg->pool);
            const char *x_default;
            if (!FUNC0(cfg, sec, default_value, &x_default,
                                     tmp_pool))
              {
                /* Recursive definitions are not supported.
                   Normalize the answer in that case. */
                *valuep = "";
              }
            else if (x_default)
              {
                FUNC6(cfg->tmp_value, x_default);
                *valuep = cfg->tmp_value->data;
              }
            FUNC5(tmp_pool);
          }
    }
}