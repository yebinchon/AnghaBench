#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  client_option_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const**,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/  const*,char const* const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const*,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(const client_option_t **opt,
            const apr_array_header_t *conflict_options,
            const char *const *options_to_show,
            const char *conflict_description,
            void *prompt_baton,
            apr_pool_t *scratch_pool)
{
  const char *prompt
    = FUNC4(conflict_options, options_to_show, scratch_pool);
  const char *answer;

  FUNC0(FUNC7(&answer, prompt, prompt_baton, scratch_pool));
  if (FUNC5(answer, "h") == 0 || FUNC5(answer, "?") == 0)
    {
      const char *helpstr;

      if (conflict_description)
        FUNC0(FUNC6(stderr, scratch_pool, "\n%s\n",
                                    conflict_description));
      FUNC0(FUNC3(&helpstr, conflict_options, scratch_pool));
      FUNC0(FUNC6(stderr, scratch_pool, "\n%s\n", helpstr));
      *opt = NULL;
    }
  else
    {
      *opt = FUNC2(conflict_options, answer);
      if (! *opt)
        {
          FUNC0(FUNC6(stderr, scratch_pool,
                                      FUNC1("Unrecognized option.\n\n")));
        }
    }
  return SVN_NO_ERROR;
}