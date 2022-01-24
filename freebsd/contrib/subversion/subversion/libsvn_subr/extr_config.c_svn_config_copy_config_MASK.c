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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(apr_hash_t **cfg_hash,
                       apr_hash_t *src_hash,
                       apr_pool_t *pool)
{
  apr_hash_index_t *cidx;

  *cfg_hash = FUNC7(pool);
  for (cidx = FUNC1(pool, src_hash);
       cidx != NULL;
       cidx = FUNC2(cidx))
  {
    const void *ckey;
    void *cval;
    apr_ssize_t ckeyLength;
    svn_config_t * srcconfig;
    svn_config_t * destconfig;

    FUNC4(cidx, &ckey, &ckeyLength, &cval);
    srcconfig = cval;

    FUNC0(FUNC6(&destconfig, srcconfig, pool));

    FUNC3(*cfg_hash,
                 FUNC5(pool, (const char*)ckey),
                 ckeyLength, destconfig);
  }

  return SVN_NO_ERROR;
}