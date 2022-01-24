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
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_access_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,void const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_fs_t *fs,
                  const char *fspath_base,
                  apr_hash_t *lock_tokens,
                  apr_pool_t *access_pool,
                  apr_pool_t *scratch_pool)
{
  if (lock_tokens)
    {
      svn_fs_access_t *access_ctx;

      FUNC0(FUNC7(&access_ctx, fs));

      /* If there is no access context, the filesystem will scream if a
         lock is needed.  */
      if (access_ctx)
        {
          apr_hash_index_t *hi;

          /* Note: we have no use for an iterpool here since the data
             within the loop is copied into ACCESS_POOL.  */

          for (hi = FUNC1(scratch_pool, lock_tokens); hi;
               hi = FUNC2(hi))
            {
              const void *relpath = FUNC3(hi);
              const char *token = FUNC4(hi);
              const char *fspath;

              /* The path needs to live as long as ACCESS_CTX.  */
              fspath = FUNC8(fspath_base, relpath, access_pool);

              /* The token must live as long as ACCESS_CTX.  */
              token = FUNC5(access_pool, token);

              FUNC0(FUNC6(access_ctx, fspath,
                                                    token));
            }
        }
    }

  return SVN_NO_ERROR;
}