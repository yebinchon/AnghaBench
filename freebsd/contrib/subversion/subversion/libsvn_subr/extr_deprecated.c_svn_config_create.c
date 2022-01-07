
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int svn_config_create2 (int **,int ,int ,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_config_create(svn_config_t **cfgp,
                  svn_boolean_t section_names_case_sensitive,
                  apr_pool_t *result_pool)
{
  return svn_error_trace(svn_config_create2(cfgp,
                                            section_names_case_sensitive,
                                            FALSE,
                                            result_pool));
}
