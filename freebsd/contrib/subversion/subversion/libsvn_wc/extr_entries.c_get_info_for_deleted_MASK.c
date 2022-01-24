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
struct TYPE_4__ {int /*<<< orphan*/  revision; int /*<<< orphan*/  deleted; int /*<<< orphan*/  uuid; int /*<<< orphan*/  repos; int /*<<< orphan*/  has_props; int /*<<< orphan*/  depth; int /*<<< orphan*/  cmt_author; int /*<<< orphan*/  cmt_date; int /*<<< orphan*/  cmt_rev; } ;
typedef  TYPE_1__ svn_wc_entry_t ;
typedef  int /*<<< orphan*/  svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_wc__db_lock_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_not_present ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_wc_entry_t *entry,
                     svn_node_kind_t *kind,
                     const char **repos_relpath,
                     const svn_checksum_t **checksum,
                     svn_wc__db_lock_t **lock,
                     svn_wc__db_t *db,
                     const char *entry_abspath,
                     svn_wc__db_wcroot_t *wcroot,
                     const char *entry_relpath,
                     const svn_wc_entry_t *parent_entry,
                     svn_boolean_t have_base,
                     svn_boolean_t have_more_work,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  if (have_base && !have_more_work)
    {
      apr_int64_t repos_id;
      /* This is the delete of a BASE node */
      FUNC0(FUNC6(
                                       NULL, kind,
                                       &entry->revision,
                                       repos_relpath,
                                       &repos_id,
                                       &entry->cmt_rev,
                                       &entry->cmt_date,
                                       &entry->cmt_author,
                                       &entry->depth,
                                       checksum,
                                       NULL,
                                       lock,
                                       &entry->has_props, NULL,
                                       NULL,
                                       wcroot, entry_relpath,
                                       result_pool,
                                       scratch_pool));
      FUNC0(FUNC7(&entry->repos, &entry->uuid,
                                          wcroot, repos_id, result_pool));
    }
  else
    {
      const char *work_del_relpath;
      const char *parent_repos_relpath;
      const char *parent_relpath;
      apr_int64_t repos_id;

      /* This is a deleted child of a copy/move-here,
         so we need to scan up the WORKING tree to find the root of
         the deletion. Then examine its parent to discover its
         future location in the repository.  */
      FUNC0(FUNC8(NULL, kind,
                                            &entry->cmt_rev,
                                            &entry->cmt_date,
                                            &entry->cmt_author,
                                            &entry->depth,
                                            checksum,
                                            NULL,
                                            &entry->has_props, NULL,
                                            db,
                                            entry_abspath,
                                            result_pool,
                                            scratch_pool));
      /* working_size and text_time unavailable */

     FUNC0(FUNC10(
                                      NULL,
                                      NULL,
                                      &work_del_relpath, NULL,
                                      wcroot, entry_relpath,
                                      scratch_pool, scratch_pool));

      FUNC1(work_del_relpath != NULL);
      parent_relpath = FUNC3(work_del_relpath, scratch_pool);

      /* The parent directory of the delete root must be added, so we
         can find the required information there */
      FUNC0(FUNC9(
                                       NULL, NULL,
                                       &parent_repos_relpath,
                                       &repos_id,
                                       NULL, NULL, NULL,
                                       wcroot, parent_relpath,
                                       result_pool, scratch_pool));
      FUNC0(FUNC7(&entry->repos, &entry->uuid,
                                          wcroot, repos_id, result_pool));

      /* Now glue it all together */
      *repos_relpath = FUNC4(parent_repos_relpath,
                                        FUNC5(
                                                            parent_relpath,
                                                            entry_relpath),
                                        result_pool);


      /* Even though this is the delete of a WORKING node, there might still
         be a BASE node somewhere below with an interesting revision */
      if (have_base)
        {
          svn_wc__db_status_t status;
          FUNC0(FUNC6(
                                           &status, NULL, &entry->revision,
                                           NULL, NULL, NULL, NULL, NULL, NULL,
                                           NULL, NULL, lock, NULL, NULL,
                                           NULL,
                                           wcroot, entry_relpath,
                                           result_pool, scratch_pool));

          if (status == svn_wc__db_status_not_present)
            entry->deleted = TRUE;
        }
    }

  /* Do some extra work for the child nodes.  */
  if (!FUNC2(entry->revision) && parent_entry != NULL)
    {
      /* For child nodes without a revision, pick up the parent's
         revision.  */
      entry->revision = parent_entry->revision;
    }

  return SVN_NO_ERROR;
}