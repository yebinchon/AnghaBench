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
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(void *baton,
                               const char *path,
                               const char *ns,
                               const char *name,
                               const svn_string_t *value,
                               apr_pool_t *scratch_pool)
{
  apr_hash_t *props = baton;
  apr_pool_t *result_pool = FUNC0(props);
  const char *prop_name;

  prop_name = FUNC2(ns, name, result_pool);
  if (prop_name == NULL)
    return SVN_NO_ERROR;

  FUNC1(props, prop_name, FUNC3(value, result_pool));

  return SVN_NO_ERROR;
}