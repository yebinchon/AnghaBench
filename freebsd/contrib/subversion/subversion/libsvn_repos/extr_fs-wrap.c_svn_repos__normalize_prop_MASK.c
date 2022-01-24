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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(const svn_string_t **result_p,
                          svn_boolean_t *normalized_p,
                          const char *name,
                          const svn_string_t *value,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  if (FUNC1(name) && value)
    {
      svn_string_t *new_value;

      FUNC0(FUNC3(&new_value, NULL, normalized_p,
                                          value, "UTF-8", TRUE,
                                          result_pool, scratch_pool));
      *result_p = new_value;
    }
  else
    {
      *result_p = FUNC2(value, result_pool);
      if (normalized_p)
        *normalized_p = FALSE;
    }

  return SVN_NO_ERROR;
}