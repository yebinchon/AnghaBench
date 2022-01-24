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
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char const* FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_fs_t *dst_fs,
                     const char *dst_subdir,
                     svn_revnum_t start_rev,
                     svn_revnum_t end_rev,
                     int max_files_per_dir,
                     apr_pool_t *scratch_pool)
{
  const char *shard;
  const char *dst_subdir_shard;
  svn_revnum_t rev;
  apr_pool_t *iterpool;

  /* Pre-compute paths for initial shard. */
  shard = FUNC1(scratch_pool, "%ld", start_rev / max_files_per_dir);
  dst_subdir_shard = FUNC3(dst_subdir, shard, scratch_pool);

  iterpool = FUNC5(scratch_pool);
  for (rev = start_rev; rev < end_rev; rev++)
    {
      FUNC4(iterpool);

      /* If necessary, update paths for shard. */
      if (rev != start_rev && rev % max_files_per_dir == 0)
        {
          shard = FUNC1(iterpool, "%ld", rev / max_files_per_dir);
          dst_subdir_shard = FUNC3(dst_subdir, shard, scratch_pool);
        }

      /* remove files for REV */
      FUNC0(FUNC2(FUNC3(dst_subdir_shard,
                                                  FUNC1(iterpool,
                                                               "%ld", rev),
                                                  iterpool),
                                  iterpool));
    }

  FUNC6(iterpool);

  return SVN_NO_ERROR;
}