
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int ) ;
 int svn_dirent_is_absolute (char const*) ;
 int * svn_error_trace (int ) ;
 int svn_stream_open_readonly (int **,char const*,int *,int *) ;
 char* svn_wc__adm_child (char const*,char const*,int *) ;

svn_error_t *
svn_wc__open_adm_stream(svn_stream_t **stream,
                        const char *dir_abspath,
                        const char *fname,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *local_abspath;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(dir_abspath));

  local_abspath = svn_wc__adm_child(dir_abspath, fname, scratch_pool);
  return svn_error_trace(svn_stream_open_readonly(stream, local_abspath,
                                                  result_pool, scratch_pool));
}
