#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ proplist; } ;
typedef  TYPE_1__ transaction_t ;
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_PROP_BASEVALUE_MISMATCH ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

svn_error_t *
FUNC9(svn_fs_t *fs,
                          svn_revnum_t rev,
                          const char *name,
                          const svn_string_t *const *old_value_p,
                          const svn_string_t *value,
                          trail_t *trail,
                          apr_pool_t *pool)
{
  transaction_t *txn;
  const char *txn_id;
  const svn_string_t *present_value;

  FUNC0(FUNC3(&txn, &txn_id, fs, rev, trail, pool));
  present_value = FUNC6(txn->proplist, name);

  /* If there's no proplist, but we're just deleting a property, exit now. */
  if ((! txn->proplist) && (! value))
    return SVN_NO_ERROR;

  /* Now, if there's no proplist, we know we need to make one. */
  if (! txn->proplist)
    txn->proplist = FUNC2(pool);

  /* Set the property. */
  if (old_value_p)
    {
      const svn_string_t *wanted_value = *old_value_p;
      if ((!wanted_value != !present_value)
          || (wanted_value && present_value
              && !FUNC8(wanted_value, present_value)))
        {
          /* What we expected isn't what we found. */
          return FUNC5(SVN_ERR_FS_PROP_BASEVALUE_MISMATCH, NULL,
                                   FUNC1("revprop '%s' has unexpected value in "
                                     "filesystem"),
                                   name);
        }
      /* Fall through. */
    }

  /* If the prop-set is a no-op, skip the actual write. */
  if ((!present_value && !value)
      || (present_value && value
          && FUNC8(present_value, value)))
    return SVN_NO_ERROR;

  FUNC7(txn->proplist, name, value);

  /* Overwrite the revision. */
  return FUNC4(fs, txn, txn_id, trail, pool);
}