
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_repos_t ;
typedef int svn_membuf_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int config_access_t ;
typedef int authz_full_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ authz_pool ;
 int * construct_authz_key (int *,int *,int *) ;
 int * svn_authz__parse (int **,int *,int *,int *,int *) ;
 int * svn_error_quick_wrapf (int *,char*,char const*) ;
 int svn_object_pool__insert (void**,scalar_t__,int *,int *,int *,int *) ;
 int svn_object_pool__lookup (void**,scalar_t__,int *,int *) ;
 int * svn_object_pool__new_item_pool (scalar_t__) ;
 int svn_pool_destroy (int *) ;
 int * svn_repos__create_config_access (int *,int *) ;
 int svn_repos__destroy_config_access (int *) ;
 int svn_repos__get_config (int **,int **,int *,char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
authz_read(authz_full_t **authz_p,
           svn_membuf_t **authz_id,
           const char *path,
           const char *groups_path,
           svn_boolean_t must_exist,
           svn_repos_t *repos_hint,
           apr_pool_t *result_pool,
           apr_pool_t *scratch_pool)
{
  svn_error_t* err = ((void*)0);
  svn_stream_t *rules_stream = ((void*)0);
  svn_stream_t *groups_stream = ((void*)0);
  svn_checksum_t *rules_checksum = ((void*)0);
  svn_checksum_t *groups_checksum = ((void*)0);

  config_access_t *config_access =
    svn_repos__create_config_access(repos_hint, scratch_pool);


  SVN_ERR(svn_repos__get_config(&rules_stream, &rules_checksum, config_access,
                                path, must_exist, scratch_pool));


  if (groups_path)
    SVN_ERR(svn_repos__get_config(&groups_stream, &groups_checksum,
                                  config_access, groups_path, must_exist,
                                  scratch_pool));


  *authz_id = construct_authz_key(rules_checksum, groups_checksum,
                                  result_pool);
  if (authz_pool)
    {

      SVN_ERR(svn_object_pool__lookup((void **)authz_p, authz_pool,
                                      *authz_id, result_pool));


      if (!*authz_p)
        {
          apr_pool_t *item_pool = svn_object_pool__new_item_pool(authz_pool);



          err = svn_authz__parse(authz_p, rules_stream, groups_stream,
                                item_pool, scratch_pool);
          if (err != SVN_NO_ERROR)
            {

              svn_pool_destroy(item_pool);



              err = svn_error_quick_wrapf(err,
                                   "Error while parsing config file: '%s':",
                                   path);
            }
          else
            {
              SVN_ERR(svn_object_pool__insert((void **)authz_p, authz_pool,
                                              *authz_id, *authz_p,
                                              item_pool, result_pool));
            }
        }
    }
  else
    {


      err = svn_error_quick_wrapf(svn_authz__parse(authz_p, rules_stream,
                                                   groups_stream,
                                                   result_pool, scratch_pool),
                                  "Error while parsing authz file: '%s':",
                                  path);
    }

  svn_repos__destroy_config_access(config_access);

  return err;
}
