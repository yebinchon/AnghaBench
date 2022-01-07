
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int * svn_error_trace (int ) ;
 int svn_wc__parse_externals_description (int **,int *,char const*,char const*,int ,int *) ;

svn_error_t *
svn_wc_parse_externals_description3(apr_array_header_t **externals_p,
                                    const char *defining_directory,
                                    const char *desc,
                                    svn_boolean_t canonicalize_url,
                                    apr_pool_t *pool)
{
  return svn_error_trace(svn_wc__parse_externals_description(externals_p,
                                                             ((void*)0),
                                                             defining_directory,
                                                             desc,
                                                             canonicalize_url,
                                                             pool));
}
