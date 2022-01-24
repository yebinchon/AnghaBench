#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_WC_NOT_LOCKED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_empty ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_deleted ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 
 scalar_t__ svn_wc__db_status_not_present ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_wc__db_t *db,
                       svn_wc__db_wcroot_t *wcroot,
                       const char *local_relpath,
                       svn_boolean_t via_recurse,
                       svn_wc__db_status_t status,
                       svn_node_kind_t kind,
                       svn_boolean_t prop_mods,
                       const svn_checksum_t *old_checksum,
                       svn_revnum_t new_revnum,
                       apr_time_t new_changed_date,
                       const char *new_changed_author,
                       apr_hash_t *new_dav_cache,
                       svn_boolean_t remove_lock,
                       svn_boolean_t remove_changelist,
                       const svn_checksum_t *checksum,
                       apr_pool_t *scratch_pool)
{
  svn_revnum_t new_changed_rev = new_revnum;
  svn_skel_t *work_item = NULL;

  {
    const char *lock_relpath;
    svn_boolean_t locked;

    if (kind == svn_node_dir)
      lock_relpath = local_relpath;
    else
      lock_relpath = FUNC8(local_relpath, scratch_pool);

    FUNC0(FUNC10(&locked, wcroot,
                                                 lock_relpath, FALSE,
                                                 scratch_pool));

    if (!locked)
      return FUNC7(SVN_ERR_WC_NOT_LOCKED, NULL,
                             FUNC2("No write-lock in '%s'"),
                             FUNC5(wcroot, local_relpath,
                                                    scratch_pool));

    FUNC0(FUNC4(wcroot, lock_relpath, svn_depth_empty,
                          scratch_pool));
  }

  if (status == svn_wc__db_status_not_present)
    {
      /* We are committing the leaf of a copy operation.
         We leave the not-present marker to allow pulling in excluded
         children of a copy.

         The next update will remove the not-present marker. */

      return SVN_NO_ERROR;
    }

  FUNC1(status == svn_wc__db_status_normal
                 || status == svn_wc__db_status_incomplete
                 || status == svn_wc__db_status_added
                 || status == svn_wc__db_status_deleted);

  if (kind != svn_node_dir
      && status != svn_wc__db_status_deleted)
    {
      /* If we sent a delta (meaning: post-copy modification),
         then this file will appear in the queue and so we should have
         its checksum already. */
      if (checksum == NULL)
        {
          /* It was copied and not modified. We must have a text
             base for it. And the node should have a checksum. */
          FUNC1(old_checksum != NULL);

          checksum = old_checksum;

          /* Is the node completely unmodified and are we recursing? */
          if (via_recurse && !prop_mods)
            {
              /* If a copied node itself is not modified, but the op_root of
                 the copy is committed we have to make sure that changed_rev,
                 changed_date and changed_author don't change or the working
                 copy used for committing will show different last modified
                 information then a clean checkout of exactly the same
                 revisions. (Issue #3676) */

              FUNC0(FUNC9(
                                           NULL, NULL, NULL, NULL, NULL,
                                           &new_changed_rev,
                                           &new_changed_date,
                                           &new_changed_author, NULL, NULL,
                                           NULL, NULL, NULL, NULL, NULL,
                                           NULL, NULL, NULL, NULL,
                                           NULL, NULL, NULL, NULL,
                                           NULL, NULL,
                                           wcroot, local_relpath,
                                           scratch_pool, scratch_pool));
            }
        }

      FUNC0(FUNC11(&work_item,
                                           db, FUNC6(wcroot->abspath,
                                                               local_relpath,
                                                               scratch_pool),
                                           prop_mods,
                                           scratch_pool, scratch_pool));
    }

  /* The new text base will be found in the pristine store by its checksum. */
  FUNC0(FUNC3(wcroot, local_relpath,
                      new_revnum, new_changed_rev,
                      new_changed_date, new_changed_author,
                      checksum,
                      new_dav_cache,
                      !remove_changelist,
                      !remove_lock,
                      work_item,
                      scratch_pool));

  return SVN_NO_ERROR;
}