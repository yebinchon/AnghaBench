
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_diff_datasource_e ;
typedef int apr_size_t ;
typedef scalar_t__ apr_off_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
datasources_open(void *baton,
                 apr_off_t *prefix_lines,
                 apr_off_t *suffix_lines,
                 const svn_diff_datasource_e *datasources,
                 apr_size_t datasources_len)
{

  *prefix_lines = 0;
  *suffix_lines = 0;
  return SVN_NO_ERROR;
}
