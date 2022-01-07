
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;


 scalar_t__ INVALID_REPOS_ID ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 int read_info (scalar_t__*,int *,int *,char const**,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int scan_addition (int *,int *,char const**,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int scan_deletion (char const**,int *,char const**,int *,int *,char const*,int *,int *) ;
 char const* svn_dirent_skip_ancestor (char const*,char const*) ;
 char* svn_relpath_dirname (char const*,int *) ;
 char* svn_relpath_join (char const*,char const*,int *) ;
 int svn_relpath_split (char const**,char const**,char const*,int *) ;
 int svn_wc__db_base_get_info_internal (int *,int *,int *,char const**,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_excluded ;

__attribute__((used)) static svn_error_t *
db_read_repos_info(svn_revnum_t *revision,
                   const char **repos_relpath,
                   apr_int64_t *repos_id,
                   svn_wc__db_wcroot_t *wcroot,
                   const char *local_relpath,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;

  SVN_ERR(read_info(&status, ((void*)0), revision, repos_relpath, repos_id, ((void*)0),
                    ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                    ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                    ((void*)0), ((void*)0), ((void*)0),
                    wcroot, local_relpath, result_pool, scratch_pool));

  if ((repos_relpath && !*repos_relpath)
      || (repos_id && *repos_id == INVALID_REPOS_ID))
    {
      if (status == svn_wc__db_status_added)
        {
          SVN_ERR(scan_addition(((void*)0), ((void*)0), repos_relpath, repos_id, ((void*)0),
                                ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                wcroot, local_relpath,
                                result_pool, scratch_pool));
        }
      else if (status == svn_wc__db_status_deleted)
        {
          const char *base_del_relpath;
          const char *work_del_relpath;

          SVN_ERR(scan_deletion(&base_del_relpath, ((void*)0),
                                &work_del_relpath,
                                ((void*)0), wcroot,
                                local_relpath,
                                scratch_pool,
                                scratch_pool));

          if (work_del_relpath)
            {

              const char *work_relpath = ((void*)0);





              SVN_ERR_ASSERT(work_del_relpath != ((void*)0));
              work_relpath = svn_relpath_dirname(work_del_relpath,
                                                 scratch_pool);

              SVN_ERR(scan_addition(((void*)0), ((void*)0), repos_relpath, repos_id,
                                    ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                    wcroot, work_relpath,
                                    scratch_pool, scratch_pool));

              if (repos_relpath)
                *repos_relpath = svn_relpath_join(
                                    *repos_relpath,
                                    svn_dirent_skip_ancestor(work_relpath,
                                                             local_relpath),
                                    result_pool);
            }
          else if (base_del_relpath)
            {
              SVN_ERR(svn_wc__db_base_get_info_internal(((void*)0), ((void*)0), revision,
                                                        repos_relpath,
                                                        repos_id,
                                                        ((void*)0), ((void*)0), ((void*)0),
                                                        ((void*)0), ((void*)0), ((void*)0),
                                                        ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                        wcroot,
                                                        base_del_relpath,
                                                        scratch_pool,
                                                        scratch_pool));

              if (repos_relpath)
                *repos_relpath = svn_relpath_join(
                                    *repos_relpath,
                                    svn_dirent_skip_ancestor(base_del_relpath,
                                                             local_relpath),
                                    result_pool);
            }
          else
            SVN_ERR_MALFUNCTION();
        }
      else if (status == svn_wc__db_status_excluded)
        {
          const char *parent_relpath;
          const char *name;




          svn_relpath_split(&parent_relpath, &name, local_relpath,
                            scratch_pool);
          SVN_ERR(scan_addition(((void*)0), ((void*)0), repos_relpath, repos_id, ((void*)0),
                                ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                wcroot, parent_relpath,
                                scratch_pool, scratch_pool));

          if (repos_relpath)
            *repos_relpath = svn_relpath_join(*repos_relpath, name,
                                              result_pool);

          return SVN_NO_ERROR;
        }
      else
        {


          SVN_ERR_MALFUNCTION();
        }
    }

  return SVN_NO_ERROR;
}
