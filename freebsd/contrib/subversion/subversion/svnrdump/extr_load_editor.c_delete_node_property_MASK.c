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
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * value; } ;
typedef  TYPE_2__ svn_prop_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct node_baton {int /*<<< orphan*/  prop_changes; TYPE_1__* rb; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/ * pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *baton,
                     const char *name)
{
  struct node_baton *nb = baton;
  apr_pool_t *pool = nb->rb->pool;
  svn_prop_t *prop;

  FUNC0(FUNC4(name, NULL, pool));

  prop = FUNC1(pool, sizeof (*prop));
  prop->name = FUNC2(pool, name);
  prop->value = NULL;
  FUNC3(nb->prop_changes, prop->name, prop);

  return SVN_NO_ERROR;
}