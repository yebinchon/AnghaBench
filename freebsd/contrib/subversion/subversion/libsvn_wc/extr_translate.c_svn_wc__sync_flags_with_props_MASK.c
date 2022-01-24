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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_wc__db_lock_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EXECUTABLE ; 
 int /*<<< orphan*/  SVN_PROP_NEEDS_LOCK ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_normal ; 

svn_error_t *
FUNC8(svn_boolean_t *did_set,
                              svn_wc__db_t *db,
                              const char *local_abspath,
                              apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  svn_wc__db_lock_t *lock;
  apr_hash_t *props = NULL;
  svn_boolean_t had_props;
  svn_boolean_t props_mod;

  if (did_set)
    *did_set = FALSE;

  /* ### We'll consolidate these info gathering statements in a future
         commit. */

  FUNC0(FUNC5(&status, &kind, NULL, NULL, NULL, NULL, NULL,
                               NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                               NULL, &lock, NULL, NULL, NULL, NULL, NULL,
                               &had_props, &props_mod, NULL, NULL, NULL,
                               db, local_abspath,
                               scratch_pool, scratch_pool));

  /* We actually only care about the following flags on files, so just
     early-out for all other types.

     Also bail if there is no in-wc representation of the file. */
  if (kind != svn_node_file
      || (status != svn_wc__db_status_normal
          && status != svn_wc__db_status_added))
    return SVN_NO_ERROR;

  if (props_mod || had_props)
    FUNC0(FUNC7(&props, db, local_abspath, scratch_pool,
                                  scratch_pool));
  else
    props = NULL;

  /* If we get this far, we're going to change *something*, so just set
     the flag appropriately. */
  if (did_set)
    *did_set = TRUE;

  /* Handle the read-write bit. */
  if (status != svn_wc__db_status_normal
      || props == NULL
      || ! FUNC1(props, SVN_PROP_NEEDS_LOCK)
      || lock)
    {
      FUNC0(FUNC4(local_abspath, FALSE, scratch_pool));
    }
  else
    {
      /* Special case: If we have an uncommitted svn:needs-lock, we don't
         set the file read_only just yet.  That happens upon commit. */
      apr_hash_t *pristine_props;

      if (! props_mod)
        pristine_props = props;
      else if (had_props)
        FUNC0(FUNC6(&pristine_props, db, local_abspath,
                                                scratch_pool, scratch_pool));
      else
        pristine_props = NULL;

      if (pristine_props
            && FUNC1(pristine_props, SVN_PROP_NEEDS_LOCK) )
            /*&& props
            && apr_hash_get(props, SVN_PROP_NEEDS_LOCK, APR_HASH_KEY_STRING) )*/
        FUNC0(FUNC3(local_abspath, FALSE, scratch_pool));
    }

/* Windows doesn't care about the execute bit. */
#ifndef WIN32

  if (props == NULL
      || ! FUNC1(props, SVN_PROP_EXECUTABLE))
    {
      /* Turn off the execute bit */
      FUNC0(FUNC2(local_abspath, FALSE, FALSE,
                                         scratch_pool));
    }
  else
    FUNC0(FUNC2(local_abspath, TRUE, FALSE,
                                       scratch_pool));
#endif

  return SVN_NO_ERROR;
}