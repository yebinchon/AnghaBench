
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_CONFIG_CATEGORY_CONFIG ;
 int SVN_CONFIG_CATEGORY_SERVERS ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_category_config (int **,char const*,int ,int *) ;
 int * svn_hash__make (int *) ;
 int svn_hash_sets (int *,int ,int *) ;

svn_error_t *
svn_config_get_config(apr_hash_t **cfg_hash,
                      const char *config_dir,
                      apr_pool_t *pool)
{
  svn_config_t *cfg;
  *cfg_hash = svn_hash__make(pool);

  SVN_ERR(get_category_config(&cfg, config_dir, SVN_CONFIG_CATEGORY_SERVERS,
                              pool));
  svn_hash_sets(*cfg_hash, SVN_CONFIG_CATEGORY_SERVERS, cfg);

  SVN_ERR(get_category_config(&cfg, config_dir, SVN_CONFIG_CATEGORY_CONFIG,
                              pool));
  svn_hash_sets(*cfg_hash, SVN_CONFIG_CATEGORY_CONFIG, cfg);

  return SVN_NO_ERROR;
}
