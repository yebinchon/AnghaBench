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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const**,char**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(const char **result,
         char **buf, const char *end,
         int wc_format,
         apr_pool_t *pool)
{
  FUNC0(FUNC1(result, buf, end, pool));

  /* Always canonicalize the url, as we have stricter canonicalization rules
     in 1.7+ then before */
  if (*result && **result)
    *result = FUNC2(*result, pool);

  return SVN_NO_ERROR;
}