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
typedef  int /*<<< orphan*/  svn_repos__config_pool_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  config_access_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(svn_config_t **cfg,
                           svn_repos__config_pool_t *config_pool,
                           const char *path,
                           svn_boolean_t must_exist,
                           svn_repos_t *preferred_repos,
                           apr_pool_t *pool)
{
  svn_error_t *err = SVN_NO_ERROR;
  apr_pool_t *scratch_pool = FUNC7(pool);
  config_access_t *access = FUNC9(preferred_repos,
                                                            scratch_pool);
  svn_stream_t *stream;
  svn_checksum_t *checksum;

  *cfg = NULL;
  err = FUNC11(&stream, &checksum, access, path, must_exist,
                              scratch_pool);
  if (!err)
    err = FUNC4(FUNC0(cfg, config_pool, stream,
                                            checksum, pool, scratch_pool),
                                "Error while parsing config file: '%s':",
                                path);

  /* Let the standard implementation handle all the difficult cases.
   * Note that for in-repo configs, there are no further special cases to
   * check for and deal with. */
  if (!*cfg && !FUNC6(path))
    {
      FUNC3(err);
      err = FUNC2(cfg, path, must_exist, FALSE, FALSE, pool);
    }

  FUNC10(access);
  FUNC8(scratch_pool);

  /* we need to duplicate the root structure as it contains temp. buffers */
  if (*cfg)
    *cfg = FUNC1(*cfg, pool);

  return FUNC5(err);
}