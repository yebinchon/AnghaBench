
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;
 int svn_wc__wq_build_file_remove (int **,int *,char const*,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
remove_artifact_file_if_exists(svn_skel_t **work_items,
                               svn_boolean_t *file_found,
                               svn_wc__db_t *db,
                               const char *wri_abspath,
                               const char *artifact_file_abspath,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  *work_items = ((void*)0);
  if (artifact_file_abspath)
    {
      svn_node_kind_t node_kind;

      SVN_ERR(svn_io_check_path(artifact_file_abspath, &node_kind,
                                scratch_pool));
      if (node_kind == svn_node_file)
        {
          SVN_ERR(svn_wc__wq_build_file_remove(work_items,
                                               db, wri_abspath,
                                               artifact_file_abspath,
                                               result_pool, scratch_pool));
          if (file_found)
            *file_found = TRUE;
        }
    }

  return SVN_NO_ERROR;
}
