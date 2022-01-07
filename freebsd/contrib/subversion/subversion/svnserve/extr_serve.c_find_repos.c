
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef int svn_repos__config_pool_t ;
typedef int svn_error_t ;
typedef int svn_config_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_11__ {char const* realm; void* hooks_env; int repos; int fs; scalar_t__ use_sasl; int max_ssf; int min_ssf; int repos_root; int base; int * repos_name; int * authz_repos_name; int repos_url; TYPE_1__* fs_path; int capabilities; } ;
typedef TYPE_3__ repository_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_9__ {int data; } ;


 scalar_t__ FALSE ;
 int SVN_CONFIG_OPTION_HOOKS_ENV ;
 int SVN_CONFIG_OPTION_MAX_SSF ;
 int SVN_CONFIG_OPTION_MIN_SSF ;
 int SVN_CONFIG_OPTION_REALM ;
 char const* SVN_CONFIG_OPTION_USE_SASL ;
 int SVN_CONFIG_SECTION_GENERAL ;
 int SVN_CONFIG_SECTION_SASL ;
 int SVN_ERR (int ) ;
 int SVN_ERR_BAD_CONFIG_VALUE ;
 int SVN_ERR_BAD_FILENAME ;
 int SVN_ERR_BAD_URL ;
 int SVN_ERR_RA_SVN_REPOS_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 char* _ (char*) ;
 void* apr_pstrdup (int *,char const*) ;
 int load_authz_config (TYPE_3__*,int ,int *,int *) ;
 int load_pwdb_config (TYPE_3__*,int *,int *,int *) ;
 int repos_path_valid (char const*) ;
 int set_access (TYPE_3__*,int *,scalar_t__) ;
 char* skip_scheme_part (char const*) ;
 char* strchr (char const*,char) ;
 int strlen (int ) ;
 int svn_config_get (int *,char const**,int ,int ,char*) ;
 int svn_config_get_bool (int *,scalar_t__*,int ,char const*,scalar_t__) ;
 int svn_cstring_atoui (int *,char const*) ;
 int * svn_dirent_basename (int ,int *) ;
 int svn_dirent_canonicalize (char const*,int *) ;
 char* svn_dirent_internal_style (char const*,int *) ;
 int * svn_dirent_is_child (char const*,int ,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int * svn_error_create (int ,int *,char*) ;
 int * svn_error_createf (int ,int *,char*,char const*) ;
 int svn_fs_get_uuid (int ,char const**,int *) ;
 int svn_path_component_count (int ) ;
 int svn_path_remove_components (TYPE_2__*,int ) ;
 char* svn_path_uri_decode (char const*,int *) ;
 int * svn_path_uri_encode (int *,int *) ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 int svn_repos__config_pool_get (int **,int *,int ,scalar_t__,int ,int *) ;
 int svn_repos_conf_dir (int ,int *) ;
 int svn_repos_find_root_path (char const*,int *) ;
 int svn_repos_fs (int ) ;
 int svn_repos_hooks_setenv (int ,char const*,int *) ;
 int svn_repos_open3 (int *,int ,int *,int *,int *) ;
 int svn_repos_remember_client_capabilities (int ,int ) ;
 int svn_repos_svnserve_conf (int ,int *) ;
 void* svn_stringbuf_create (char const*,int *) ;

__attribute__((used)) static svn_error_t *
find_repos(const char *url,
           const char *root,
           svn_boolean_t vhost,
           svn_boolean_t read_only,
           svn_config_t *cfg,
           repository_t *repository,
           svn_repos__config_pool_t *config_pool,
           apr_hash_t *fs_config,
           apr_pool_t *result_pool,
           apr_pool_t *scratch_pool)
{
  const char *path, *full_path, *fs_path, *hooks_env;
  svn_stringbuf_t *url_buf;
  svn_boolean_t sasl_requested;


  path = skip_scheme_part(url);
  if (path == ((void*)0))
    return svn_error_createf(SVN_ERR_BAD_URL, ((void*)0),
                             "Non-svn URL passed to svn server: '%s'", url);

  if (! vhost)
    {
      path = strchr(path, '/');
      if (path == ((void*)0))
        path = "";
    }
  path = svn_relpath_canonicalize(path, scratch_pool);
  path = svn_path_uri_decode(path, scratch_pool);



  if (!repos_path_valid(path))
    return svn_error_create(SVN_ERR_BAD_FILENAME, ((void*)0),
                            "Couldn't determine repository path");


  full_path = svn_dirent_join(svn_dirent_canonicalize(root, scratch_pool),
                              path, scratch_pool);


  repository->repos_root = svn_repos_find_root_path(full_path, result_pool);
  if (!repository->repos_root)
    return svn_error_createf(SVN_ERR_RA_SVN_REPOS_NOT_FOUND, ((void*)0),
                             "No repository found in '%s'", url);


  SVN_ERR(svn_repos_open3(&repository->repos, repository->repos_root,
                          fs_config, result_pool, scratch_pool));
  SVN_ERR(svn_repos_remember_client_capabilities(repository->repos,
                                                 repository->capabilities));
  repository->fs = svn_repos_fs(repository->repos);
  fs_path = full_path + strlen(repository->repos_root);
  repository->fs_path = svn_stringbuf_create(*fs_path ? fs_path : "/",
                                             result_pool);
  url_buf = svn_stringbuf_create(url, result_pool);
  svn_path_remove_components(url_buf,
                        svn_path_component_count(repository->fs_path->data));
  repository->repos_url = url_buf->data;
  repository->authz_repos_name = svn_dirent_is_child(root,
                                                     repository->repos_root,
                                                     result_pool);
  if (repository->authz_repos_name == ((void*)0))
    repository->repos_name = svn_dirent_basename(repository->repos_root,
                                                 result_pool);
  else
    repository->repos_name = repository->authz_repos_name;
  repository->repos_name = svn_path_uri_encode(repository->repos_name,
                                               result_pool);



  if (((void*)0) == cfg)
    {
      repository->base = svn_repos_conf_dir(repository->repos, result_pool);

      SVN_ERR(svn_repos__config_pool_get(&cfg, config_pool,
                                         svn_repos_svnserve_conf
                                            (repository->repos, result_pool),
                                         FALSE, repository->repos,
                                         result_pool));
    }

  SVN_ERR(load_pwdb_config(repository, cfg, config_pool, result_pool));
  SVN_ERR(load_authz_config(repository, repository->repos_root, cfg,
                            result_pool));


  SVN_ERR(svn_config_get_bool(cfg, &sasl_requested,
                              SVN_CONFIG_SECTION_SASL,
                              SVN_CONFIG_OPTION_USE_SASL, FALSE));
  if (sasl_requested)
    {
      return svn_error_createf(SVN_ERR_BAD_CONFIG_VALUE, ((void*)0),
                               _("SASL requested but not compiled in; "
                                 "set '%s' to 'false' or recompile "
                                 "svnserve with SASL support"),
                               SVN_CONFIG_OPTION_USE_SASL);

    }
  else
    {
      repository->use_sasl = FALSE;
    }


  SVN_ERR(svn_fs_get_uuid(repository->fs, &repository->realm, scratch_pool));
  svn_config_get(cfg, &repository->realm, SVN_CONFIG_SECTION_GENERAL,
                 SVN_CONFIG_OPTION_REALM, repository->realm);
  repository->realm = apr_pstrdup(result_pool, repository->realm);





  set_access(repository, cfg, read_only);


  svn_config_get(cfg, &hooks_env, SVN_CONFIG_SECTION_GENERAL,
                 SVN_CONFIG_OPTION_HOOKS_ENV, ((void*)0));
  if (hooks_env)
    hooks_env = svn_dirent_internal_style(hooks_env, scratch_pool);

  SVN_ERR(svn_repos_hooks_setenv(repository->repos, hooks_env, scratch_pool));
  repository->hooks_env = apr_pstrdup(result_pool, hooks_env);

  return SVN_NO_ERROR;
}
