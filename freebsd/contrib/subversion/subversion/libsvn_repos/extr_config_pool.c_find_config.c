
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_repos__config_pool_t ;
typedef int svn_membuf_t ;
typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * checksum_as_key (int *,int *) ;
 int svn_config__set_read_only (int *,int *) ;
 int svn_config_parse (int **,int *,int ,int ,int *) ;
 int svn_object_pool__insert (void**,int *,int *,int *,int *,int *) ;
 int svn_object_pool__lookup (void**,int *,int *,int *) ;
 int * svn_object_pool__new_item_pool (int *) ;

__attribute__((used)) static svn_error_t *
find_config(svn_config_t **cfg,
            svn_repos__config_pool_t *config_pool,
            svn_stream_t *stream,
            svn_checksum_t *checksum,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{

  svn_membuf_t *key = checksum_as_key(checksum, scratch_pool);
  SVN_ERR(svn_object_pool__lookup((void **)cfg, config_pool, key,
                                  result_pool));


  if (!*cfg)
    {
      svn_config_t *config;


      apr_pool_t *cfg_pool = svn_object_pool__new_item_pool(config_pool);
      SVN_ERR(svn_config_parse(&config, stream, FALSE, FALSE, cfg_pool));


      svn_config__set_read_only(config, cfg_pool);


      SVN_ERR(svn_object_pool__insert((void **)cfg, config_pool, key,
                                      config, cfg_pool, result_pool));
    }

  return SVN_NO_ERROR;
}
