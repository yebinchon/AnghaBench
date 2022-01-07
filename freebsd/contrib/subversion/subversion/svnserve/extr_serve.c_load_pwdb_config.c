
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_repos__config_pool_t ;
struct TYPE_10__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_config_t ;
struct TYPE_11__ {int repos; int * pwdb; int base; } ;
typedef TYPE_2__ repository_t ;
typedef int apr_pool_t ;


 int APR_STATUS_IS_EACCES (scalar_t__) ;
 int SVN_CONFIG_OPTION_PASSWORD_DB ;
 int SVN_CONFIG_SECTION_GENERAL ;
 int SVN_ERR_AUTHN_FAILED ;
 scalar_t__ SVN_ERR_BAD_FILENAME ;
 TYPE_1__* SVN_NO_ERROR ;
 int TRUE ;
 int svn_config_get (int *,char const**,int ,int ,int *) ;
 char* svn_dirent_internal_style (char const*,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_create (int ,TYPE_1__*,int *) ;
 TYPE_1__* svn_repos__config_pool_get (int **,int *,char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
load_pwdb_config(repository_t *repository,
                 svn_config_t *cfg,
                 svn_repos__config_pool_t *config_pool,
                 apr_pool_t *pool)
{
  const char *pwdb_path;
  svn_error_t *err;

  svn_config_get(cfg, &pwdb_path,
                 SVN_CONFIG_SECTION_GENERAL,
                 SVN_CONFIG_OPTION_PASSWORD_DB, ((void*)0));

  repository->pwdb = ((void*)0);
  if (pwdb_path)
    {
      pwdb_path = svn_dirent_internal_style(pwdb_path, pool);
      pwdb_path = svn_dirent_join(repository->base, pwdb_path, pool);

      err = svn_repos__config_pool_get(&repository->pwdb, config_pool,
                                       pwdb_path, TRUE,
                                       repository->repos, pool);
      if (err)
        {
          if (err->apr_err != SVN_ERR_BAD_FILENAME
              && ! APR_STATUS_IS_EACCES(err->apr_err))
            {
              return svn_error_create(SVN_ERR_AUTHN_FAILED, err, ((void*)0));
            }
          else

            svn_error_clear(err);
        }
    }

  return SVN_NO_ERROR;
}
