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
struct TYPE_8__ {int /*<<< orphan*/  sdb; int /*<<< orphan*/  wc_id; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;

/* Variables and functions */
 scalar_t__ INVALID_REPOS_ID ; 
 int /*<<< orphan*/  STMT_RECURSIVE_UPDATE_NODE_REPO ; 
 int /*<<< orphan*/  STMT_UPDATE_LOCK_REPOS_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const**,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_deleted ; 
 scalar_t__ svn_wc__db_status_excluded ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_wc__db_wcroot_t *wcroot,
             const char *local_relpath,
             const char *repos_root_url,
             apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  apr_int64_t new_repos_id;
  const char *local_dir_relpath;
  svn_wc__db_status_t status;
  const char *repos_uuid;
  svn_boolean_t have_base_node;
  apr_int64_t old_repos_id;

  local_dir_relpath = local_relpath;

  FUNC0(FUNC3(&status,
                    NULL, NULL, NULL, &old_repos_id,
                    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                    NULL,
                    &have_base_node, NULL, NULL,
                    wcroot, local_relpath,
                    scratch_pool, scratch_pool));

  if (status == svn_wc__db_status_excluded)
    {
      /* The parent cannot be excluded, so look at the parent and then
         adjust the relpath */
      const char *parent_relpath = FUNC6(local_dir_relpath,
                                                       scratch_pool);
      FUNC0(FUNC3(&status,
                        NULL, NULL, NULL, &old_repos_id,
                        NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                        NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                        NULL, NULL, NULL,
                        NULL, NULL, NULL,
                        wcroot, parent_relpath,
                        scratch_pool, scratch_pool));
      local_dir_relpath = parent_relpath;
    }

  if (old_repos_id == INVALID_REPOS_ID)
    {
      /* Do we need to support relocating something that is
         added/deleted/excluded without relocating the parent?  If not
         then perhaps relpath, root_url and uuid should be passed down
         to the children so that they don't have to scan? */

      if (status == svn_wc__db_status_deleted)
        {
          const char *work_del_relpath;

          FUNC0(FUNC5(NULL, NULL,
                                &work_del_relpath, NULL,
                                wcroot, local_dir_relpath,
                                scratch_pool,
                                scratch_pool));
          if (work_del_relpath)
            {
              /* Deleted within a copy/move */

              /* The parent of the delete is added. */
              status = svn_wc__db_status_added;
              local_dir_relpath = FUNC6(work_del_relpath,
                                                      scratch_pool);
            }
        }

      if (status == svn_wc__db_status_added)
        {
          FUNC0(FUNC4(NULL, NULL, NULL, &old_repos_id,
                                NULL, NULL, NULL, NULL, NULL, NULL,
                                wcroot, local_dir_relpath,
                                scratch_pool, scratch_pool));
        }
      else
        FUNC0(FUNC10(NULL, NULL, NULL, NULL,
                                                  &old_repos_id,
                                                  NULL, NULL, NULL, NULL, NULL,
                                                  NULL, NULL, NULL, NULL, NULL,
                                                  wcroot, local_dir_relpath,
                                                  scratch_pool, scratch_pool));
    }

  FUNC0(FUNC11(NULL, &repos_uuid, wcroot,
                                      old_repos_id, scratch_pool));
  FUNC1(repos_uuid);

  /* This function affects all the children of the given local_relpath,
     but the way that it does this is through the repos inheritance mechanism.
     So, we only need to rewrite the repos_id of the given local_relpath,
     as well as any children with a non-null repos_id, as well as various
     repos_id fields in the locks and working_node tables.
   */

  /* Get the repos_id for the new repository. */
  FUNC0(FUNC2(&new_repos_id, repos_root_url, repos_uuid,
                          wcroot->sdb, scratch_pool));

  /* Set the (base and working) repos_ids and clear the dav_caches */
  FUNC0(FUNC8(&stmt, wcroot->sdb,
                                    STMT_RECURSIVE_UPDATE_NODE_REPO));
  FUNC0(FUNC7(stmt, "isii", wcroot->wc_id, local_relpath,
                            old_repos_id, new_repos_id));
  FUNC0(FUNC9(stmt));

  if (have_base_node)
    {
      /* Update any locks for the root or its children. */
      FUNC0(FUNC8(&stmt, wcroot->sdb,
                                        STMT_UPDATE_LOCK_REPOS_ID));
      FUNC0(FUNC7(stmt, "ii", old_repos_id, new_repos_id));
      FUNC0(FUNC9(stmt));
    }

  /* ### TODO: Update urls stored in inherited properties...
               What about urls in conflicts?
                 # We can probably keep these as they are only used
                   for showing full urls to the user */

  return SVN_NO_ERROR;
}