
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_diff_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * svn_diff_file_output_unified3 (int *,int *,char const*,char const*,char const*,char const*,char const*,int *,int ,int *) ;

svn_error_t *
svn_diff_file_output_unified2(svn_stream_t *output_stream,
                              svn_diff_t *diff,
                              const char *original_path,
                              const char *modified_path,
                              const char *original_header,
                              const char *modified_header,
                              const char *header_encoding,
                              apr_pool_t *pool)
{
  return svn_diff_file_output_unified3(output_stream, diff,
                                       original_path, modified_path,
                                       original_header, modified_header,
                                       header_encoding, ((void*)0), FALSE, pool);
}
