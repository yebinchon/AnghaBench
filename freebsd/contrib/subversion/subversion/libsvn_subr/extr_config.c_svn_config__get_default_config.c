
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_CONFIG_CATEGORY_CONFIG ;
 int SVN_CONFIG_CATEGORY_SERVERS ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_config_create2 (int **,int ,int ,int *) ;
 int * svn_hash__make (int *) ;
 int svn_hash_sets (int *,int ,int *) ;

svn_error_t *
svn_config__get_default_config(apr_hash_t **cfg_hash,
                               apr_pool_t *pool)
{
  svn_config_t *empty_cfg;
  *cfg_hash = svn_hash__make(pool);

  SVN_ERR(svn_config_create2(&empty_cfg, FALSE, FALSE, pool));
  svn_hash_sets(*cfg_hash, SVN_CONFIG_CATEGORY_CONFIG, empty_cfg);

  SVN_ERR(svn_config_create2(&empty_cfg, FALSE, FALSE, pool));
  svn_hash_sets(*cfg_hash, SVN_CONFIG_CATEGORY_SERVERS, empty_cfg);

  return SVN_NO_ERROR;
}
