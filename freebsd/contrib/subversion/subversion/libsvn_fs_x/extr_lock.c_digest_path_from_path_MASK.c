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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIGEST_SUBDIR_LEN ; 
 int /*<<< orphan*/  PATH_LOCKS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const char **digest_path,
                      const char *fs_path,
                      const char *path,
                      apr_pool_t *pool)
{
  const char *digest;
  FUNC0(FUNC2(&digest, path, pool));
  *digest_path = FUNC3(pool, fs_path, PATH_LOCKS_DIR,
                                      FUNC1(pool, digest,
                                                     DIGEST_SUBDIR_LEN),
                                      digest, SVN_VA_NULL);
  return SVN_NO_ERROR;
}