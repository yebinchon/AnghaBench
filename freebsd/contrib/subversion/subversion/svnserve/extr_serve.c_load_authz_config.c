
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_config_t ;
struct TYPE_4__ {void* username_case; int * authzdb; int repos; } ;
typedef TYPE_1__ repository_t ;
typedef int apr_pool_t ;


 void* CASE_ASIS ;
 void* CASE_FORCE_LOWER ;
 void* CASE_FORCE_UPPER ;
 int SVN_CONFIG_OPTION_AUTHZ_DB ;
 int SVN_CONFIG_OPTION_FORCE_USERNAME_CASE ;
 int SVN_CONFIG_OPTION_GROUPS_DB ;
 int SVN_CONFIG_SECTION_GENERAL ;
 int SVN_ERR_AUTHZ_INVALID_CONFIG ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * canonicalize_access_file (char const**,TYPE_1__*,char const*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int svn_config_get (int *,char const**,int ,int ,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_repos_authz_read3 (int **,char const*,char const*,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
load_authz_config(repository_t *repository,
                  const char *repos_root,
                  svn_config_t *cfg,
                  apr_pool_t *pool)
{
  const char *authzdb_path;
  const char *groupsdb_path;
  svn_error_t *err;


  svn_config_get(cfg, &authzdb_path, SVN_CONFIG_SECTION_GENERAL,
                 SVN_CONFIG_OPTION_AUTHZ_DB, ((void*)0));

  svn_config_get(cfg, &groupsdb_path, SVN_CONFIG_SECTION_GENERAL,
                 SVN_CONFIG_OPTION_GROUPS_DB, ((void*)0));

  if (authzdb_path)
    {
      const char *case_force_val;


      err = canonicalize_access_file(&authzdb_path, repository,
                                     repos_root, pool);


      if (groupsdb_path && !err)
        err = canonicalize_access_file(&groupsdb_path, repository,
                                       repos_root, pool);

      if (!err)
        err = svn_repos_authz_read3(&repository->authzdb, authzdb_path,
                                    groupsdb_path, TRUE, repository->repos,
                                    pool, pool);

      if (err)
        return svn_error_create(SVN_ERR_AUTHZ_INVALID_CONFIG, err, ((void*)0));



      svn_config_get(cfg, &case_force_val,
                     SVN_CONFIG_SECTION_GENERAL,
                     SVN_CONFIG_OPTION_FORCE_USERNAME_CASE, ((void*)0));
      if (case_force_val)
        {
          if (strcmp(case_force_val, "upper") == 0)
            repository->username_case = CASE_FORCE_UPPER;
          else if (strcmp(case_force_val, "lower") == 0)
            repository->username_case = CASE_FORCE_LOWER;
          else
            repository->username_case = CASE_ASIS;
        }
    }
  else
    {
      repository->authzdb = ((void*)0);
      repository->username_case = CASE_ASIS;
    }

  return SVN_NO_ERROR;
}
