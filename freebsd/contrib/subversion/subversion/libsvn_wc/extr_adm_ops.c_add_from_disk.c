
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EXECUTABLE ;
 int SVN_PROP_NEEDS_LOCK ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_prop_get_value (int const*,int ) ;
 int svn_wc__db_op_add_directory (int *,char const*,int const*,int *,int *) ;
 int svn_wc__db_op_add_file (int *,char const*,int const*,int *,int *) ;
 int svn_wc__wq_build_sync_file_flags (int **,int *,char const*,int *,int *) ;
 int svn_wc__wq_run (int *,char const*,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
add_from_disk(svn_wc__db_t *db,
              const char *local_abspath,
              svn_node_kind_t kind,
              const apr_hash_t *props,
              apr_pool_t *scratch_pool)
{
  if (kind == svn_node_file)
    {
      svn_skel_t *work_item = ((void*)0);

      if (props && (svn_prop_get_value(props, SVN_PROP_EXECUTABLE)
                    || svn_prop_get_value(props, SVN_PROP_NEEDS_LOCK)))
        SVN_ERR(svn_wc__wq_build_sync_file_flags(&work_item, db, local_abspath,
                                                 scratch_pool, scratch_pool));

      SVN_ERR(svn_wc__db_op_add_file(db, local_abspath, props, work_item,
                                     scratch_pool));
      if (work_item)
        SVN_ERR(svn_wc__wq_run(db, local_abspath, ((void*)0), ((void*)0), scratch_pool));
    }
  else
    {
      SVN_ERR(svn_wc__db_op_add_directory(db, local_abspath, props, ((void*)0),
                                          scratch_pool));
    }

  return SVN_NO_ERROR;
}
