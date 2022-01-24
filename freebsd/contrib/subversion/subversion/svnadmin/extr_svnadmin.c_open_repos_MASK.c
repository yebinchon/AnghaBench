#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_repos_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct svnadmin_opt_state {scalar_t__ no_flush_to_disk; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_2__ {scalar_t__ cache_size; } ;

/* Variables and functions */
 scalar_t__ BLOCK_READ_CACHE_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_FS_CONFIG_FSFS_BLOCK_READ ; 
 int /*<<< orphan*/  SVN_FS_CONFIG_FSFS_CACHE_DELTAS ; 
 int /*<<< orphan*/  SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS ; 
 int /*<<< orphan*/  SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS ; 
 int /*<<< orphan*/  SVN_FS_CONFIG_FSFS_CACHE_NS ; 
 int /*<<< orphan*/  SVN_FS_CONFIG_FSFS_CACHE_REVPROPS ; 
 int /*<<< orphan*/  SVN_FS_CONFIG_NO_FLUSH_TO_DISK ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  warning_func ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_repos_t **repos,
           const char *path,
           struct svnadmin_opt_state *opt_state,
           apr_pool_t *pool)
{
  /* Enable the "block-read" feature (where it applies)? */
  svn_boolean_t use_block_read
    = FUNC2()->cache_size > BLOCK_READ_CACHE_THRESHOLD;

  /* construct FS configuration parameters: enable caches for r/o data */
  apr_hash_t *fs_config = FUNC1(pool);
  FUNC4(fs_config, SVN_FS_CONFIG_FSFS_CACHE_DELTAS, "1");
  FUNC4(fs_config, SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS, "1");
  FUNC4(fs_config, SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS, "1");
  FUNC4(fs_config, SVN_FS_CONFIG_FSFS_CACHE_REVPROPS, "2");
  FUNC4(fs_config, SVN_FS_CONFIG_FSFS_CACHE_NS,
                           FUNC7(pool));
  FUNC4(fs_config, SVN_FS_CONFIG_FSFS_BLOCK_READ,
                           use_block_read ? "1" : "0");
  FUNC4(fs_config, SVN_FS_CONFIG_NO_FLUSH_TO_DISK,
                           opt_state->no_flush_to_disk ? "1" : "0");

  /* now, open the requested repository */
  FUNC0(FUNC6(repos, path, fs_config, pool, pool));
  FUNC3(FUNC5(*repos), warning_func, NULL);
  return SVN_NO_ERROR;
}