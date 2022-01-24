#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_2__ {int /*<<< orphan*/  rev; int /*<<< orphan*/  fs; int /*<<< orphan*/  const* value; int /*<<< orphan*/  name; int /*<<< orphan*/ ** old_value_p; } ;
typedef  TYPE_1__ change_rev_prop_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_PROP_BASEVALUE_MISMATCH ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static svn_error_t *
FUNC8(void *baton,
                     apr_pool_t *scratch_pool)
{
  change_rev_prop_baton_t *cb = baton;
  apr_hash_t *table;
  const svn_string_t *present_value;

  /* Read current revprop values from disk (never from cache).
     Even if somehow the cache got out of sync, we want to make sure that
     we read, update and write up-to-date data. */
  FUNC0(FUNC3(&table, cb->fs, cb->rev, TRUE,
                                          TRUE, scratch_pool, scratch_pool));
  present_value = FUNC5(table, cb->name);

  if (cb->old_value_p)
    {
      const svn_string_t *wanted_value = *cb->old_value_p;
      if ((!wanted_value != !present_value)
          || (wanted_value && present_value
              && !FUNC7(wanted_value, present_value)))
        {
          /* What we expected isn't what we found. */
          return FUNC2(SVN_ERR_FS_PROP_BASEVALUE_MISMATCH, NULL,
                                   FUNC1("revprop '%s' has unexpected value in "
                                     "filesystem"),
                                   cb->name);
        }
      /* Fall through. */
    }

  /* If the prop-set is a no-op, skip the actual write. */
  if ((!present_value && !cb->value)
      || (present_value && cb->value
          && FUNC7(present_value, cb->value)))
    return SVN_NO_ERROR;

  FUNC6(table, cb->name, cb->value);

  return FUNC4(cb->fs, cb->rev, table,
                                         scratch_pool);
}