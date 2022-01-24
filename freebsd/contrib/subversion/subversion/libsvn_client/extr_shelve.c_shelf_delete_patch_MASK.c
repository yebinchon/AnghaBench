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
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char *name,
                   const char *wc_root_abspath,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *scratch_pool)
{
  char *patch_abspath, *to_abspath;

  FUNC0(FUNC2(&patch_abspath, name, wc_root_abspath,
                            ctx, scratch_pool, scratch_pool));
  to_abspath = FUNC1(scratch_pool, patch_abspath, ".bak", SVN_VA_NULL);

  /* remove any previous backup */
  FUNC0(FUNC4(to_abspath, TRUE /*ignore_enoent*/,
                              scratch_pool));

  /* move the patch to a backup file */
  FUNC0(FUNC3(patch_abspath, to_abspath, FALSE /*flush_to_disk*/,
                              scratch_pool));
  return SVN_NO_ERROR;
}