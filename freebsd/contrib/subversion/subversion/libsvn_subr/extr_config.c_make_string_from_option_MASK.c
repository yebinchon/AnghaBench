#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * x_pool; int /*<<< orphan*/  read_only; } ;
typedef  TYPE_1__ svn_config_t ;
typedef  int /*<<< orphan*/  cfg_section_t ;
struct TYPE_7__ {scalar_t__ state; char* value; char* x_value; } ;
typedef  TYPE_2__ cfg_option_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ option_state_cyclic ; 
 void* option_state_expanded ; 
 scalar_t__ option_state_expanding ; 
 scalar_t__ option_state_needs_expanding ; 
 scalar_t__ FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(const char **valuep, svn_config_t *cfg,
                        cfg_section_t *section, cfg_option_t *opt,
                        apr_pool_t* x_pool)
{
  /* Expand the option value if necessary. */
  if (   opt->state == option_state_expanding
      || opt->state == option_state_cyclic)
    {
      /* Recursion is not supported.  Since we can't produce an error
       * nor should we abort the process, the next best thing is to
       * report the recursive part as an empty string. */
      *valuep = "";

      /* Go into "value undefined" state. */
      opt->state = option_state_cyclic;

      return;
    }
  else if (opt->state == option_state_needs_expanding)
    {
      /* before attempting to expand an option, check for the placeholder.
       * If none is there, there is no point in calling expand_option_value.
       */
      if (opt->value && FUNC3(opt->value, '%'))
        {
          apr_pool_t *tmp_pool;

          /* setting read-only mode should have expanded all values
           * automatically. */
          FUNC1(!cfg->read_only);

          tmp_pool = (x_pool ? x_pool : FUNC5(cfg->x_pool));

          /* Expand the value. During that process, have the option marked
           * as "expanding" to detect cycles. */
          opt->state = option_state_expanding;
          if (FUNC2(cfg, section, opt->value, &opt->x_value,
                                  tmp_pool))
            opt->state = option_state_expanded;
          else
            opt->state = option_state_cyclic;

          /* Ensure the expanded value is allocated in a permanent pool. */
          if (x_pool != cfg->x_pool)
            {
              /* Grab the fully expanded value from tmp_pool before its
                 disappearing act. */
              if (opt->x_value)
                opt->x_value = FUNC0(cfg->x_pool, opt->x_value,
                                              FUNC4(opt->x_value));
              if (!x_pool)
                FUNC6(tmp_pool);
            }
        }
      else
        {
          opt->state = option_state_expanded;
        }
    }

  if (opt->x_value)
    *valuep = opt->x_value;
  else
    *valuep = opt->value;
}