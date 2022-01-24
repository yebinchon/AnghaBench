#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_repos_t ;
typedef  int /*<<< orphan*/  svn_membuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  config_access_t ;
typedef  int /*<<< orphan*/  authz_full_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ authz_pool ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (void**,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void**,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(authz_full_t **authz_p,
           svn_membuf_t **authz_id,
           const char *path,
           const char *groups_path,
           svn_boolean_t must_exist,
           svn_repos_t *repos_hint,
           apr_pool_t *result_pool,
           apr_pool_t *scratch_pool)
{
  svn_error_t* err = NULL;
  svn_stream_t *rules_stream = NULL;
  svn_stream_t *groups_stream = NULL;
  svn_checksum_t *rules_checksum = NULL;
  svn_checksum_t *groups_checksum = NULL;

  config_access_t *config_access =
    FUNC8(repos_hint, scratch_pool);

  /* Open the main authz file */
  FUNC0(FUNC10(&rules_stream, &rules_checksum, config_access,
                                path, must_exist, scratch_pool));

  /* Open the optional groups file */
  if (groups_path)
    FUNC0(FUNC10(&groups_stream, &groups_checksum,
                                  config_access, groups_path, must_exist,
                                  scratch_pool));

  /* The authz cache is optional. */
  *authz_id = FUNC1(rules_checksum, groups_checksum,
                                  result_pool);
  if (authz_pool)
    {
      /* Cache lookup. */
      FUNC0(FUNC5((void **)authz_p, authz_pool,
                                      *authz_id, result_pool));

      /* If not found, parse and add to cache. */
      if (!*authz_p)
        {
          apr_pool_t *item_pool = FUNC6(authz_pool);

          /* Parse the configuration(s) and construct the full authz model
           * from it. */
          err = FUNC2(authz_p, rules_stream, groups_stream,
                                item_pool, scratch_pool);
          if (err != SVN_NO_ERROR)
            {
              /* That pool would otherwise never get destroyed. */
              FUNC7(item_pool);

              /* Add the URL / file name to the error stack since the parser
               * doesn't have it. */
              err = FUNC3(err,
                                   "Error while parsing config file: '%s':",
                                   path);
            }
          else
            {
              FUNC0(FUNC4((void **)authz_p, authz_pool,
                                              *authz_id, *authz_p,
                                              item_pool, result_pool));
            }
        }
    }
  else
    {
      /* Parse the configuration(s) and construct the full authz model from
       * it. */
      err = FUNC3(FUNC2(authz_p, rules_stream,
                                                   groups_stream,
                                                   result_pool, scratch_pool),
                                  "Error while parsing authz file: '%s':",
                                  path);
    }

  FUNC9(config_access);

  return err;
}