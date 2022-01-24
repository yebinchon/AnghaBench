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
typedef  int /*<<< orphan*/  svn_repos__config_pool_t ;
typedef  int /*<<< orphan*/  svn_membuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_config_t **cfg,
            svn_repos__config_pool_t *config_pool,
            svn_stream_t *stream,
            svn_checksum_t *checksum,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  /* First, attempt the cache lookup. */
  svn_membuf_t *key = FUNC1(checksum, scratch_pool);
  FUNC0(FUNC5((void **)cfg, config_pool, key,
                                  result_pool));

  /* Not found? => parse and cache */
  if (!*cfg)
    {
      svn_config_t *config;

      /* create a pool for the new config object and parse the data into it */
      apr_pool_t *cfg_pool = FUNC6(config_pool);
      FUNC0(FUNC3(&config, stream, FALSE, FALSE, cfg_pool));

      /* switch config data to r/o mode to guarantee thread-safe access */
      FUNC2(config, cfg_pool);

      /* add config in pool, handle loads races and return the right config */
      FUNC0(FUNC4((void **)cfg, config_pool, key,
                                      config, cfg_pool, result_pool));
    }

  return SVN_NO_ERROR;
}