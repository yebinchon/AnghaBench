
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int SVN_ERR (int *) ;
 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 int * create_repos_id (int *,char const*,char const*,int ,int *) ;
 int * read_info (scalar_t__*,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,scalar_t__*,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 int * scan_addition (scalar_t__*,char const**,int *,int *,char const**,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 int * scan_deletion (char const**,int *,char const**,int *,TYPE_1__*,char const*,int *,int *) ;
 int svn_dirent_split (char const**,char const**,char const*,int *) ;
 char* svn_relpath_dirname (char const*,int *) ;
 char* svn_relpath_join (char const*,char const*,int *) ;
 char const* svn_relpath_skip_ancestor (char const*,char const*) ;
 int * svn_wc__db_base_get_info_internal (int *,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 int * svn_wc__db_fetch_repos_info (char const**,char const**,TYPE_1__*,int ,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_excluded ;

__attribute__((used)) static svn_error_t *
get_info_for_copy(apr_int64_t *copyfrom_id,
                  const char **copyfrom_relpath,
                  svn_revnum_t *copyfrom_rev,
                  svn_wc__db_status_t *status,
                  svn_node_kind_t *kind,
                  svn_boolean_t *op_root,
                  svn_wc__db_wcroot_t *src_wcroot,
                  const char *local_relpath,
                  svn_wc__db_wcroot_t *dst_wcroot,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  const char *repos_relpath;
  svn_revnum_t revision;
  svn_wc__db_status_t node_status;
  apr_int64_t repos_id;
  svn_boolean_t is_op_root;

  SVN_ERR(read_info(&node_status, kind, &revision, &repos_relpath, &repos_id,
                    ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), copyfrom_relpath,
                    copyfrom_id, copyfrom_rev, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                    ((void*)0), &is_op_root, ((void*)0), ((void*)0),
                    ((void*)0) ,
                    ((void*)0) ,
                    ((void*)0) ,
                    src_wcroot, local_relpath, result_pool, scratch_pool));

  if (op_root)
    *op_root = is_op_root;

  if (node_status == svn_wc__db_status_excluded)
    {


      const char *parent_relpath, *base_name;

      svn_dirent_split(&parent_relpath, &base_name, local_relpath,
                       scratch_pool);
      SVN_ERR(get_info_for_copy(copyfrom_id, copyfrom_relpath, copyfrom_rev,
                                ((void*)0), ((void*)0), ((void*)0),
                                src_wcroot, parent_relpath, dst_wcroot,
                                scratch_pool, scratch_pool));
      if (*copyfrom_relpath)
        *copyfrom_relpath = svn_relpath_join(*copyfrom_relpath, base_name,
                                             result_pool);
    }
  else if (node_status == svn_wc__db_status_added)
    {
      SVN_ERR(scan_addition(&node_status, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                            ((void*)0), ((void*)0), ((void*)0), src_wcroot, local_relpath,
                            scratch_pool, scratch_pool));
    }
  else if (node_status == svn_wc__db_status_deleted && is_op_root)
    {
      const char *base_del_relpath, *work_del_relpath;

      SVN_ERR(scan_deletion(&base_del_relpath, ((void*)0),
                            &work_del_relpath,
                            ((void*)0), src_wcroot, local_relpath,
                            scratch_pool, scratch_pool));
      if (work_del_relpath)
        {
          const char *op_root_relpath;
          const char *parent_del_relpath = svn_relpath_dirname(work_del_relpath,
                                                               scratch_pool);



          SVN_ERR(scan_addition(((void*)0), &op_root_relpath,
                                ((void*)0), ((void*)0),
                                copyfrom_relpath, copyfrom_id, copyfrom_rev,
                                ((void*)0), ((void*)0), ((void*)0),
                                src_wcroot, parent_del_relpath,
                                scratch_pool, scratch_pool));
          *copyfrom_relpath
            = svn_relpath_join(*copyfrom_relpath,
                               svn_relpath_skip_ancestor(op_root_relpath,
                                                         local_relpath),
                               result_pool);
        }
      else if (base_del_relpath)
        {
          SVN_ERR(svn_wc__db_base_get_info_internal(((void*)0), ((void*)0), copyfrom_rev,
                                                    copyfrom_relpath,
                                                    copyfrom_id, ((void*)0), ((void*)0),
                                                    ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                    ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                    src_wcroot, local_relpath,
                                                    result_pool,
                                                    scratch_pool));
        }
      else
        SVN_ERR_MALFUNCTION();
    }
  else if (node_status == svn_wc__db_status_deleted)
    {


    }
  else
    {
      *copyfrom_relpath = repos_relpath;
      *copyfrom_rev = revision;
      *copyfrom_id = repos_id;
    }

  if (status)
    *status = node_status;

  if (src_wcroot != dst_wcroot && *copyfrom_relpath)
    {
      const char *repos_root_url;
      const char *repos_uuid;






      SVN_ERR(svn_wc__db_fetch_repos_info(&repos_root_url, &repos_uuid,
                                          src_wcroot, *copyfrom_id,
                                          scratch_pool));

      SVN_ERR(create_repos_id(copyfrom_id, repos_root_url, repos_uuid,
                              dst_wcroot->sdb, scratch_pool));
    }

  return SVN_NO_ERROR;
}
