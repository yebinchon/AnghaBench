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
typedef  int svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,char,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char const*,char const*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_boolean_t *skipped_p,
                        const char *src_subdir,
                        const char *dst_subdir,
                        svn_revnum_t rev,
                        int max_files_per_dir,
                        svn_boolean_t props,
                        apr_pool_t *scratch_pool)
{
  const char *src_subdir_shard = src_subdir,
             *dst_subdir_shard = dst_subdir;

  const char *shard = FUNC1(scratch_pool, "%ld",
                                   rev / max_files_per_dir);
  src_subdir_shard = FUNC3(src_subdir, shard, scratch_pool);
  dst_subdir_shard = FUNC3(dst_subdir, shard, scratch_pool);

  if (rev % max_files_per_dir == 0)
    {
      FUNC0(FUNC5(dst_subdir_shard, scratch_pool));
      FUNC0(FUNC4(dst_subdir, dst_subdir_shard,
                                scratch_pool));
    }

  FUNC0(FUNC2(skipped_p,
                                   src_subdir_shard, dst_subdir_shard,
                                   FUNC1(scratch_pool, "%c%ld",
                                                props ? 'p' : 'r',
                                                rev),
                                   scratch_pool));
  return SVN_NO_ERROR;
}