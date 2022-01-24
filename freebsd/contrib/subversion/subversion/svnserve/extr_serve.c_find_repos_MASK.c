#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_repos__config_pool_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_11__ {char const* realm; void* hooks_env; int /*<<< orphan*/  repos; int /*<<< orphan*/  fs; scalar_t__ use_sasl; int /*<<< orphan*/  max_ssf; int /*<<< orphan*/  min_ssf; int /*<<< orphan*/  repos_root; int /*<<< orphan*/  base; int /*<<< orphan*/ * repos_name; int /*<<< orphan*/ * authz_repos_name; int /*<<< orphan*/  repos_url; TYPE_1__* fs_path; int /*<<< orphan*/  capabilities; } ;
typedef  TYPE_3__ repository_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_HOOKS_ENV ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_MAX_SSF ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_MIN_SSF ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_REALM ; 
 char const* SVN_CONFIG_OPTION_USE_SASL ; 
 int /*<<< orphan*/  SVN_CONFIG_SECTION_GENERAL ; 
 int /*<<< orphan*/  SVN_CONFIG_SECTION_SASL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_BAD_CONFIG_VALUE ; 
 int /*<<< orphan*/  SVN_ERR_BAD_FILENAME ; 
 int /*<<< orphan*/  SVN_ERR_BAD_URL ; 
 int /*<<< orphan*/  SVN_ERR_RA_SVN_REPOS_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (char const*,char) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC15 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC17 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC23 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC25 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC34 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC35(const char *url,
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

  /* Skip past the scheme and authority part. */
  path = FUNC7(url);
  if (path == NULL)
    return FUNC19(SVN_ERR_BAD_URL, NULL,
                             "Non-svn URL passed to svn server: '%s'", url);

  if (! vhost)
    {
      path = FUNC8(path, '/');
      if (path == NULL)
        path = "";
    }
  path = FUNC25(path, scratch_pool);
  path = FUNC23(path, scratch_pool);

  /* Ensure that it isn't possible to escape the root by disallowing
     '..' segments. */
  if (!FUNC5(path))
    return FUNC18(SVN_ERR_BAD_FILENAME, NULL,
                            "Couldn't determine repository path");

  /* Join the server-configured root with the client path. */
  full_path = FUNC17(FUNC14(root, scratch_pool),
                              path, scratch_pool);

  /* Search for a repository in the full path. */
  repository->repos_root = FUNC28(full_path, result_pool);
  if (!repository->repos_root)
    return FUNC19(SVN_ERR_RA_SVN_REPOS_NOT_FOUND, NULL,
                             "No repository found in '%s'", url);

  /* Open the repository and fill in b with the resulting information. */
  FUNC0(FUNC31(&repository->repos, repository->repos_root,
                          fs_config, result_pool, scratch_pool));
  FUNC0(FUNC32(repository->repos,
                                                 repository->capabilities));
  repository->fs = FUNC29(repository->repos);
  fs_path = full_path + FUNC9(repository->repos_root);
  repository->fs_path = FUNC34(*fs_path ? fs_path : "/",
                                             result_pool);
  url_buf = FUNC34(url, result_pool);
  FUNC22(url_buf,
                        FUNC21(repository->fs_path->data));
  repository->repos_url = url_buf->data;
  repository->authz_repos_name = FUNC16(root,
                                                     repository->repos_root,
                                                     result_pool);
  if (repository->authz_repos_name == NULL)
    repository->repos_name = FUNC13(repository->repos_root,
                                                 result_pool);
  else
    repository->repos_name = repository->authz_repos_name;
  repository->repos_name = FUNC24(repository->repos_name,
                                               result_pool);

  /* If the svnserve configuration has not been loaded then load it from the
   * repository. */
  if (NULL == cfg)
    {
      repository->base = FUNC27(repository->repos, result_pool);

      FUNC0(FUNC26(&cfg, config_pool,
                                         FUNC33
                                            (repository->repos, result_pool),
                                         FALSE, repository->repos,
                                         result_pool));
    }

  FUNC0(FUNC4(repository, cfg, config_pool, result_pool));
  FUNC0(FUNC3(repository, repository->repos_root, cfg,
                            result_pool));

  /* Should we use Cyrus SASL? */
  FUNC0(FUNC11(cfg, &sasl_requested,
                              SVN_CONFIG_SECTION_SASL,
                              SVN_CONFIG_OPTION_USE_SASL, FALSE));
  if (sasl_requested)
    {
#ifdef SVN_HAVE_SASL
      const char *val;

      repository->use_sasl = sasl_requested;

      svn_config_get(cfg, &val, SVN_CONFIG_SECTION_SASL,
                    SVN_CONFIG_OPTION_MIN_SSF, "0");
      SVN_ERR(svn_cstring_atoui(&repository->min_ssf, val));

      svn_config_get(cfg, &val, SVN_CONFIG_SECTION_SASL,
                    SVN_CONFIG_OPTION_MAX_SSF, "256");
      SVN_ERR(svn_cstring_atoui(&repository->max_ssf, val));
#else /* !SVN_HAVE_SASL */
      return FUNC19(SVN_ERR_BAD_CONFIG_VALUE, NULL,
                               FUNC1("SASL requested but not compiled in; "
                                 "set '%s' to 'false' or recompile "
                                 "svnserve with SASL support"),
                               SVN_CONFIG_OPTION_USE_SASL);
#endif /* SVN_HAVE_SASL */
    }
  else
    {
      repository->use_sasl = FALSE;
    }

  /* Use the repository UUID as the default realm. */
  FUNC0(FUNC20(repository->fs, &repository->realm, scratch_pool));
  FUNC10(cfg, &repository->realm, SVN_CONFIG_SECTION_GENERAL,
                 SVN_CONFIG_OPTION_REALM, repository->realm);
  repository->realm = FUNC2(result_pool, repository->realm);

  /* Make sure it's possible for the client to authenticate.  Note
     that this doesn't take into account any authz configuration read
     above, because we can't know about access it grants until paths
     are given by the client. */
  FUNC6(repository, cfg, read_only);

  /* Configure hook script environment variables. */
  FUNC10(cfg, &hooks_env, SVN_CONFIG_SECTION_GENERAL,
                 SVN_CONFIG_OPTION_HOOKS_ENV, NULL);
  if (hooks_env)
    hooks_env = FUNC15(hooks_env, scratch_pool);

  FUNC0(FUNC30(repository->repos, hooks_env, scratch_pool));
  repository->hooks_env = FUNC2(result_pool, hooks_env);

  return SVN_NO_ERROR;
}