#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* filtered; int /*<<< orphan*/  full; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ svn_authz_t ;
struct TYPE_8__ {int /*<<< orphan*/  global_rights; int /*<<< orphan*/ * root; int /*<<< orphan*/  lookup_state; int /*<<< orphan*/ * user; int /*<<< orphan*/ * repository; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_2__ authz_user_rules_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static authz_user_rules_t *
FUNC7(svn_authz_t *authz,
               const char *repos_name,
               const char *user)
{
  apr_pool_t *pool;

  /* Search our cache for a suitable previously filtered tree. */
  if (authz->filtered)
    {
      /* Is this a suitable filtered tree? */
      if (FUNC3(authz->filtered, repos_name, user))
        return authz->filtered;

      /* Drop the old filtered tree before creating a new one. */
      FUNC6(authz->filtered->pool);
      authz->filtered = NULL;
    }

  /* Global cache lookup.  Filter the full model only if necessary. */
  pool = FUNC5(authz->pool);

  /* Write a new entry. */
  authz->filtered = FUNC0(pool, sizeof(*authz->filtered));
  authz->filtered->pool = pool;
  authz->filtered->repository = FUNC1(pool, repos_name);
  authz->filtered->user = user ? FUNC1(pool, user) : NULL;
  authz->filtered->lookup_state = FUNC2(pool);
  authz->filtered->root = NULL;

  FUNC4(&authz->filtered->global_rights,
                               authz->full, user, repos_name);

  return authz->filtered;
}