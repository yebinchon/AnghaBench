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
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(void *baton,
                  const char *path,
                  const char *ns,
                  const char *name,
                  const svn_string_t *value,
                  apr_pool_t *scratch_pool)
{
  apr_hash_t *nss = baton;
  apr_hash_t *props;
  apr_pool_t *result_pool = FUNC1(nss);

  props = FUNC3(nss, ns);

  if (!props)
    {
      props = FUNC0(result_pool);

      ns = FUNC2(result_pool, ns);
      FUNC4(nss, ns, props);
    }

  name = FUNC2(result_pool, name);
  FUNC4(props, name, FUNC5(value, result_pool));

  return SVN_NO_ERROR;
}