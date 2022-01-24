#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  new_filename; int /*<<< orphan*/  old_filename; } ;
typedef  TYPE_1__ svn_patch_t ;
typedef  int /*<<< orphan*/  svn_patch_file_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(apr_hash_t **affected_paths,
                           const char *name,
                           const char *local_abspath,
                           svn_client_ctx_t *ctx,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  const char *wc_root_abspath;
  char *patch_abspath;
  svn_patch_file_t *patch_file;
  apr_pool_t *iterpool = FUNC10(scratch_pool);
  apr_hash_t *paths = FUNC1(result_pool);

  FUNC0(FUNC4(&wc_root_abspath,
                                 local_abspath, ctx, scratch_pool, scratch_pool));
  FUNC0(FUNC3(&patch_abspath, name, wc_root_abspath,
                            ctx, scratch_pool, scratch_pool));
  FUNC0(FUNC6(&patch_file, patch_abspath, result_pool));

  while (1)
    {
      svn_patch_t *patch;

      FUNC9(iterpool);
      FUNC0(FUNC7(&patch, patch_file,
                                        FALSE /*reverse*/,
                                        FALSE /*ignore_whitespace*/,
                                        iterpool, iterpool));
      if (! patch)
        break;
      FUNC8(paths,
                    FUNC2(result_pool, patch->old_filename),
                    FUNC2(result_pool, patch->new_filename));
    }
  FUNC0(FUNC5(patch_file, iterpool));
  FUNC11(iterpool);

  *affected_paths = paths;
  return SVN_NO_ERROR;
}