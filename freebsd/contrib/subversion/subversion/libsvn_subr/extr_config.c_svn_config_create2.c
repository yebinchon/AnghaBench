
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {void* read_only; void* option_names_case_sensitive; void* section_names_case_sensitive; void* tmp_value; void* tmp_key; void* x_values; int x_pool; int * pool; int sections; } ;
typedef TYPE_1__ svn_config_t ;
typedef void* svn_boolean_t ;
typedef int apr_pool_t ;


 void* FALSE ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_palloc (int *,int) ;
 int svn_hash__make (int *) ;
 int svn_pool_create (int *) ;
 void* svn_stringbuf_create_empty (int *) ;

svn_error_t *
svn_config_create2(svn_config_t **cfgp,
                   svn_boolean_t section_names_case_sensitive,
                   svn_boolean_t option_names_case_sensitive,
                   apr_pool_t *result_pool)
{
  svn_config_t *cfg = apr_palloc(result_pool, sizeof(*cfg));

  cfg->sections = svn_hash__make(result_pool);
  cfg->pool = result_pool;
  cfg->x_pool = svn_pool_create(result_pool);
  cfg->x_values = FALSE;
  cfg->tmp_key = svn_stringbuf_create_empty(result_pool);
  cfg->tmp_value = svn_stringbuf_create_empty(result_pool);
  cfg->section_names_case_sensitive = section_names_case_sensitive;
  cfg->option_names_case_sensitive = option_names_case_sensitive;
  cfg->read_only = FALSE;

  *cfgp = cfg;
  return SVN_NO_ERROR;
}
