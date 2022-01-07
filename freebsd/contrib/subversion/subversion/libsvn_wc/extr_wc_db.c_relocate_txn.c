
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sdb; int wc_id; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;


 scalar_t__ INVALID_REPOS_ID ;
 int STMT_RECURSIVE_UPDATE_NODE_REPO ;
 int STMT_UPDATE_LOCK_REPOS_ID ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (char const*) ;
 int * SVN_NO_ERROR ;
 int create_repos_id (scalar_t__*,char const*,char const*,int ,int *) ;
 int read_info (scalar_t__*,int *,int *,int *,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,scalar_t__*,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 int scan_addition (int *,int *,int *,scalar_t__*,int *,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 int scan_deletion (int *,int *,char const**,int *,TYPE_1__*,char const*,int *,int *) ;
 char* svn_relpath_dirname (char const*,int *) ;
 int svn_sqlite__bindf (int *,char*,scalar_t__,scalar_t__,...) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__step_done (int *) ;
 int svn_wc__db_base_get_info_internal (int *,int *,int *,int *,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 int svn_wc__db_fetch_repos_info (int *,char const**,TYPE_1__*,scalar_t__,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_excluded ;

__attribute__((used)) static svn_error_t *
relocate_txn(svn_wc__db_wcroot_t *wcroot,
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

  SVN_ERR(read_info(&status,
                    ((void*)0), ((void*)0), ((void*)0), &old_repos_id,
                    ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                    ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                    ((void*)0),
                    &have_base_node, ((void*)0), ((void*)0),
                    wcroot, local_relpath,
                    scratch_pool, scratch_pool));

  if (status == svn_wc__db_status_excluded)
    {


      const char *parent_relpath = svn_relpath_dirname(local_dir_relpath,
                                                       scratch_pool);
      SVN_ERR(read_info(&status,
                        ((void*)0), ((void*)0), ((void*)0), &old_repos_id,
                        ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                        ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                        ((void*)0), ((void*)0), ((void*)0),
                        ((void*)0), ((void*)0), ((void*)0),
                        wcroot, parent_relpath,
                        scratch_pool, scratch_pool));
      local_dir_relpath = parent_relpath;
    }

  if (old_repos_id == INVALID_REPOS_ID)
    {





      if (status == svn_wc__db_status_deleted)
        {
          const char *work_del_relpath;

          SVN_ERR(scan_deletion(((void*)0), ((void*)0),
                                &work_del_relpath, ((void*)0),
                                wcroot, local_dir_relpath,
                                scratch_pool,
                                scratch_pool));
          if (work_del_relpath)
            {



              status = svn_wc__db_status_added;
              local_dir_relpath = svn_relpath_dirname(work_del_relpath,
                                                      scratch_pool);
            }
        }

      if (status == svn_wc__db_status_added)
        {
          SVN_ERR(scan_addition(((void*)0), ((void*)0), ((void*)0), &old_repos_id,
                                ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                wcroot, local_dir_relpath,
                                scratch_pool, scratch_pool));
        }
      else
        SVN_ERR(svn_wc__db_base_get_info_internal(((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                  &old_repos_id,
                                                  ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                  ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                  wcroot, local_dir_relpath,
                                                  scratch_pool, scratch_pool));
    }

  SVN_ERR(svn_wc__db_fetch_repos_info(((void*)0), &repos_uuid, wcroot,
                                      old_repos_id, scratch_pool));
  SVN_ERR_ASSERT(repos_uuid);
  SVN_ERR(create_repos_id(&new_repos_id, repos_root_url, repos_uuid,
                          wcroot->sdb, scratch_pool));


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_RECURSIVE_UPDATE_NODE_REPO));
  SVN_ERR(svn_sqlite__bindf(stmt, "isii", wcroot->wc_id, local_relpath,
                            old_repos_id, new_repos_id));
  SVN_ERR(svn_sqlite__step_done(stmt));

  if (have_base_node)
    {

      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_UPDATE_LOCK_REPOS_ID));
      SVN_ERR(svn_sqlite__bindf(stmt, "ii", old_repos_id, new_repos_id));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }






  return SVN_NO_ERROR;
}
