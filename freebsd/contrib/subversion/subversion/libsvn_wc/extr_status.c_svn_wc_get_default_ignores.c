
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_CONFIG_CATEGORY_CONFIG ;
 int SVN_CONFIG_DEFAULT_GLOBAL_IGNORES ;
 int SVN_CONFIG_OPTION_GLOBAL_IGNORES ;
 int SVN_CONFIG_SECTION_MISCELLANY ;
 int * SVN_NO_ERROR ;
 int * apr_array_make (int *,int,int) ;
 int svn_config_get (int *,char const**,int ,int ,int ) ;
 int svn_cstring_split_append (int *,char const*,char*,int ,int *) ;
 int * svn_hash_gets (int *,int ) ;

svn_error_t *
svn_wc_get_default_ignores(apr_array_header_t **patterns,
                           apr_hash_t *config,
                           apr_pool_t *pool)
{
  svn_config_t *cfg = config
                      ? svn_hash_gets(config, SVN_CONFIG_CATEGORY_CONFIG)
                      : ((void*)0);
  const char *val;



  svn_config_get(cfg, &val, SVN_CONFIG_SECTION_MISCELLANY,
                 SVN_CONFIG_OPTION_GLOBAL_IGNORES,
                 SVN_CONFIG_DEFAULT_GLOBAL_IGNORES);
  *patterns = apr_array_make(pool, 16, sizeof(const char *));


  svn_cstring_split_append(*patterns, val, "\n\r\t\v ", FALSE, pool);
  return SVN_NO_ERROR;
}
