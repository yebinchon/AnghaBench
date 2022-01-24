#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct svn_config_t {int /*<<< orphan*/  sections; } ;
struct TYPE_3__ {int /*<<< orphan*/  options; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ cfg_section_t ;
struct TYPE_4__ {int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ cfg_option_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 

svn_error_t *
FUNC8(svn_stream_t *stream,
                  const struct svn_config_t *cfg,
                  apr_pool_t *scratch_pool)
{
  apr_hash_index_t *section_i;
  apr_hash_index_t *options_i;
  apr_pool_t *section_pool = FUNC5(scratch_pool);
  apr_pool_t *options_pool = FUNC5(scratch_pool);

  for (section_i = FUNC1(scratch_pool, cfg->sections);
       section_i != NULL;
       section_i = FUNC2(section_i))
    {
      cfg_section_t *section = FUNC3(section_i);
      FUNC4(section_pool);
      FUNC0(FUNC7(stream, section_pool, "\n[%s]\n",
                                section->name));

      for (options_i = FUNC1(section_pool, section->options);
           options_i != NULL;
           options_i = FUNC2(options_i))
        {
          cfg_option_t *option = FUNC3(options_i);
          FUNC4(options_pool);
          FUNC0(FUNC7(stream, options_pool, "%s=%s\n",
                                    option->name, option->value));
        }
    }

  FUNC6(section_pool);
  FUNC6(options_pool);

  return SVN_NO_ERROR;
}