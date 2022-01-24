#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ svn_prop_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  prop_changes; int /*<<< orphan*/  pool; int /*<<< orphan*/  commit_ctx; } ;
typedef  TYPE_2__ dir_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC7(void *dir_baton,
                const char *name,
                const svn_string_t *value,
                apr_pool_t *scratch_pool)
{
  dir_context_t *dir = dir_baton;
  svn_prop_t *prop;

  if (! FUNC1(dir->commit_ctx))
    {
      /* Ensure we have a checked out dir. */
      FUNC0(FUNC4(dir, scratch_pool));
    }

  prop = FUNC2(dir->pool, sizeof(*prop));

  prop->name = FUNC3(dir->pool, name);
  prop->value = FUNC6(value, dir->pool);

  FUNC5(dir->prop_changes, prop->name, prop);

  return SVN_NO_ERROR;
}