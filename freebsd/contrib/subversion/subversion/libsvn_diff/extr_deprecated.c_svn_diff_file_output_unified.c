
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_diff_t ;
typedef int apr_pool_t ;


 int SVN_APR_LOCALE_CHARSET ;
 int * svn_diff_file_output_unified2 (int *,int *,char const*,char const*,char const*,char const*,int ,int *) ;

svn_error_t *
svn_diff_file_output_unified(svn_stream_t *output_stream,
                             svn_diff_t *diff,
                             const char *original_path,
                             const char *modified_path,
                             const char *original_header,
                             const char *modified_header,
                             apr_pool_t *pool)
{
  return svn_diff_file_output_unified2(output_stream, diff,
                                       original_path, modified_path,
                                       original_header, modified_header,
                                       SVN_APR_LOCALE_CHARSET, pool);
}
