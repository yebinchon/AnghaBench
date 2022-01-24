#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * expanded_groups; TYPE_1__* authz; } ;
typedef  TYPE_2__ ctor_baton_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_5__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__*,char const*,int) ; 
 int /*<<< orphan*/ * interned_empty_string ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(ctor_baton_t *cb, const char *group, const char *user)
{
  apr_hash_t *members = FUNC2(cb->expanded_groups, group);
  if (!members)
    {
      group = FUNC0(cb, group, -1);
      members = FUNC1(cb->authz->pool);
      FUNC3(cb->expanded_groups, group, members);
    }
  FUNC3(members, user, interned_empty_string);
}