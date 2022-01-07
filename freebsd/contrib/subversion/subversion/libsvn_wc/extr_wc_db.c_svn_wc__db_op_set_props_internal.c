
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_FILESIZE ;
 int * SVN_NO_ERROR ;
 int db_record_fileinfo (int *,char const*,int ,int ,int *) ;
 int set_actual_props (int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_op_set_props_internal(svn_wc__db_wcroot_t *wcroot,
                                 const char *local_relpath,
                                 apr_hash_t *props,
                                 svn_boolean_t clear_recorded_info,
                                 apr_pool_t *scratch_pool)
{
  SVN_ERR(set_actual_props(wcroot, local_relpath, props, scratch_pool));

  if (clear_recorded_info)
    {
      SVN_ERR(db_record_fileinfo(wcroot, local_relpath,
                                 SVN_INVALID_FILESIZE, 0,
                                 scratch_pool));
    }

  return SVN_NO_ERROR;
}
