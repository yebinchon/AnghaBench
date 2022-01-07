
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_repos_t ;
typedef int svn_repos__config_pool_t ;
typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int config_access_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 int find_config (int **,int *,int *,int *,int *,int *) ;
 int * svn_config__shallow_copy (int *,int *) ;
 int * svn_config_read3 (int **,char const*,int ,int ,int ,int *) ;
 int svn_error_clear (int *) ;
 int * svn_error_quick_wrapf (int ,char*,char const*) ;
 int * svn_error_trace (int *) ;
 int svn_path_is_url (char const*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_repos__create_config_access (int *,int *) ;
 int svn_repos__destroy_config_access (int *) ;
 int * svn_repos__get_config (int **,int **,int *,char const*,int ,int *) ;

svn_error_t *
svn_repos__config_pool_get(svn_config_t **cfg,
                           svn_repos__config_pool_t *config_pool,
                           const char *path,
                           svn_boolean_t must_exist,
                           svn_repos_t *preferred_repos,
                           apr_pool_t *pool)
{
  svn_error_t *err = SVN_NO_ERROR;
  apr_pool_t *scratch_pool = svn_pool_create(pool);
  config_access_t *access = svn_repos__create_config_access(preferred_repos,
                                                            scratch_pool);
  svn_stream_t *stream;
  svn_checksum_t *checksum;

  *cfg = ((void*)0);
  err = svn_repos__get_config(&stream, &checksum, access, path, must_exist,
                              scratch_pool);
  if (!err)
    err = svn_error_quick_wrapf(find_config(cfg, config_pool, stream,
                                            checksum, pool, scratch_pool),
                                "Error while parsing config file: '%s':",
                                path);




  if (!*cfg && !svn_path_is_url(path))
    {
      svn_error_clear(err);
      err = svn_config_read3(cfg, path, must_exist, FALSE, FALSE, pool);
    }

  svn_repos__destroy_config_access(access);
  svn_pool_destroy(scratch_pool);


  if (*cfg)
    *cfg = svn_config__shallow_copy(*cfg, pool);

  return svn_error_trace(err);
}
