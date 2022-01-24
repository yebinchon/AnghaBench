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
typedef  int /*<<< orphan*/  terminal_handle_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  config_dir; } ;
typedef  TYPE_1__ svn_cmdline_prompt_baton2_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SVN_CONFIG_CATEGORY_SERVERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,scalar_t__,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_boolean_t *may_save_plaintext,
                        const char *realmstring,
                        const char *prompt_string,
                        const char *prompt_text,
                        void *baton,
                        apr_pool_t *pool)
{
  const char *answer = NULL;
  svn_boolean_t answered = FALSE;
  svn_cmdline_prompt_baton2_t *pb = baton;
  const char *config_path = NULL;
  terminal_handle_t *terminal;

  *may_save_plaintext = FALSE; /* de facto API promise */

  if (pb)
    FUNC0(FUNC5(&config_path, pb->config_dir,
                                            SVN_CONFIG_CATEGORY_SERVERS, pool));

  FUNC0(FUNC7(&terminal, FALSE, pool));
  FUNC0(FUNC8(FUNC2(pool, prompt_text,
                                     realmstring, config_path),
                        terminal, pool));
  FUNC0(FUNC6(terminal));

  do
    {
      FUNC0(FUNC4(&answer, prompt_string, FALSE, pb, pool));
      if (FUNC3(answer, FUNC1("yes")) == 0 ||
          FUNC3(answer, FUNC1("y")) == 0)
        {
          *may_save_plaintext = TRUE;
          answered = TRUE;
        }
      else if (FUNC3(answer, FUNC1("no")) == 0 ||
               FUNC3(answer, FUNC1("n")) == 0)
        {
          *may_save_plaintext = FALSE;
          answered = TRUE;
        }
      else
          prompt_string = FUNC1("Please type 'yes' or 'no': ");
    }
  while (! answered);

  return SVN_NO_ERROR;
}