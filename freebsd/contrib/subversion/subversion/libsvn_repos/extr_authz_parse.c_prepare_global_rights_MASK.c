#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* authz; } ;
typedef  TYPE_2__ ctor_baton_t ;
struct TYPE_11__ {int /*<<< orphan*/  user; } ;
typedef  TYPE_3__ authz_global_rights_t ;
struct TYPE_9__ {int /*<<< orphan*/  user_rights; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC4(ctor_baton_t *cb, const char *user)
{
  authz_global_rights_t *gr = FUNC2(cb->authz->user_rights, user);
  if (!gr)
    {
      gr = FUNC0(cb->authz->pool, sizeof(*gr));
      FUNC1(gr, user, cb->authz->pool);
      FUNC3(cb->authz->user_rights, gr->user, gr);
    }
}