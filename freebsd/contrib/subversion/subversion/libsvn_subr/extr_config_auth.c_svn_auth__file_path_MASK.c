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
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_CONFIG__AUTH_SUBDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(const char **path,
                    const char *cred_kind,
                    const char *realmstring,
                    const char *config_dir,
                    apr_pool_t *pool)
{
  const char *authdir_path, *hexname;
  svn_checksum_t *checksum;

  /* Construct the path to the directory containing the creds files,
     e.g. "~/.subversion/auth/svn.simple".  The last component is
     simply the cred_kind.  */
  FUNC0(FUNC4(&authdir_path, config_dir,
                                          SVN_CONFIG__AUTH_SUBDIR, pool));
  if (authdir_path)
    {
      authdir_path = FUNC5(authdir_path, cred_kind, pool);

      /* Construct the basename of the creds file.  It's just the
         realmstring converted into an md5 hex string.  */
      FUNC0(FUNC2(&checksum, svn_checksum_md5, realmstring,
                           FUNC1(realmstring), pool));
      hexname = FUNC3(checksum, pool);

      *path = FUNC5(authdir_path, hexname, pool);
    }
  else
    *path = NULL;

  return SVN_NO_ERROR;
}