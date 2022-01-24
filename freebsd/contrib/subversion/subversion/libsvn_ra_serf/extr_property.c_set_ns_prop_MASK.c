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
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  const apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(apr_hash_t *ns_props,
            const char *ns, const char *name,
            const svn_string_t *val, apr_pool_t *result_pool)
{
  apr_hash_t *props = FUNC2(ns_props, ns);

  if (!props)
    {
      props = FUNC0(result_pool);
      ns = FUNC1(result_pool, ns);
      FUNC3(ns_props, ns, props);
    }

  if (val)
    {
      name = FUNC1(result_pool, name);
      val = FUNC4(val, result_pool);
    }

  FUNC3(props, name, val);
}