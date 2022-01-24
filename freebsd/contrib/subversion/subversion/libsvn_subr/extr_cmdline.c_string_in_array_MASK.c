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
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_CL_ARG_PARSING_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,char const**,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,...) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const char *needle,
                const char **haystack,
                apr_size_t haystack_len,
                apr_pool_t *scratch_pool)
{
  const char *next_of_kin;
  apr_size_t i;
  for (i = 0; i < haystack_len; i++)
    {
      if (!FUNC2(needle, haystack[i]))
        return SVN_NO_ERROR;
    }

  /* Error. */
  next_of_kin = FUNC1(needle, haystack, haystack_len, scratch_pool);
  if (next_of_kin)
    return FUNC3(SVN_ERR_CL_ARG_PARSING_ERROR, NULL,
                             FUNC0("Ignoring unknown value '%s'; "
                               "did you mean '%s'?"),
                             needle, next_of_kin);
  else
    return FUNC3(SVN_ERR_CL_ARG_PARSING_ERROR, NULL,
                             FUNC0("Ignoring unknown value '%s'"),
                             needle);
}