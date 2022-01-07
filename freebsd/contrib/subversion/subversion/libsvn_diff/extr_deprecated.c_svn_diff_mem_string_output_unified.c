
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_diff_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int svn_diff_mem_string_output_unified2 (int *,int *,int ,int *,char const*,char const*,char const*,int const*,int const*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_diff_mem_string_output_unified(svn_stream_t *output_stream,
                                   svn_diff_t *diff,
                                   const char *original_header,
                                   const char *modified_header,
                                   const char *header_encoding,
                                   const svn_string_t *original,
                                   const svn_string_t *modified,
                                   apr_pool_t *pool)
{
  return svn_error_trace(svn_diff_mem_string_output_unified2(output_stream,
                                                             diff,
                                                             TRUE,
                                                             ((void*)0),
                                                             original_header,
                                                             modified_header,
                                                             header_encoding,
                                                             original,
                                                             modified,
                                                             pool));
}
