
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_config__constructor_create (int *,int *,int ,int *) ;
 int svn_config__default_add_value_fn ;
 int * svn_config__parse_stream (int *,int ,int *,int *) ;
 int * svn_config_create2 (int **,int ,int ,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_config_parse(svn_config_t **cfgp, svn_stream_t *stream,
                 svn_boolean_t section_names_case_sensitive,
                 svn_boolean_t option_names_case_sensitive,
                 apr_pool_t *result_pool)
{
  svn_config_t *cfg;
  svn_error_t *err;
  apr_pool_t *scratch_pool = svn_pool_create(result_pool);

  err = svn_config_create2(&cfg,
                           section_names_case_sensitive,
                           option_names_case_sensitive,
                           result_pool);

  if (err == SVN_NO_ERROR)
    err = svn_config__parse_stream(stream,
                                   svn_config__constructor_create(
                                       ((void*)0), ((void*)0),
                                       svn_config__default_add_value_fn,
                                       scratch_pool),
                                   cfg, scratch_pool);

  if (err == SVN_NO_ERROR)
    *cfgp = cfg;

  svn_pool_destroy(scratch_pool);

  return err;
}
