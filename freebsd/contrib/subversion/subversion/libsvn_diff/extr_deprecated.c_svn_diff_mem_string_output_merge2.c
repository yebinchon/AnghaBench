
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_diff_t ;
typedef int svn_diff_conflict_display_style_t ;
typedef int apr_pool_t ;


 int svn_diff_mem_string_output_merge3 (int *,int *,int const*,int const*,int const*,char const*,char const*,char const*,char const*,int ,int *,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_diff_mem_string_output_merge2(svn_stream_t *output_stream,
                                  svn_diff_t *diff,
                                  const svn_string_t *original,
                                  const svn_string_t *modified,
                                  const svn_string_t *latest,
                                  const char *conflict_original,
                                  const char *conflict_modified,
                                  const char *conflict_latest,
                                  const char *conflict_separator,
                                  svn_diff_conflict_display_style_t style,
                                  apr_pool_t *pool)
{
  return svn_error_trace(svn_diff_mem_string_output_merge3(output_stream, diff,
                                                           original,
                                                           modified, latest,
                                                           conflict_original,
                                                           conflict_modified,
                                                           conflict_latest,
                                                           conflict_separator,
                                                           style,

                                                           ((void*)0), ((void*)0),
                                                           pool));
}
