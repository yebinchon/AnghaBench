#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  report_baton; TYPE_1__* sess; } ;
typedef  TYPE_2__ reporter_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {char* repos_url; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_RA_ILLEGAL_URL ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *reporter_baton,
                   const char *path,
                   const char *url,
                   svn_revnum_t revision,
                   svn_depth_t depth,
                   svn_boolean_t start_empty,
                   const char *lock_token,
                   apr_pool_t *pool)
{
  reporter_baton_t *rbaton = reporter_baton;
  const char *repos_url = rbaton->sess->repos_url;
  const char *relpath = FUNC4(repos_url, url, pool);
  const char *fs_path;

  if (!relpath)
    return FUNC2(SVN_ERR_RA_ILLEGAL_URL, NULL,
                             FUNC0("'%s'\n"
                               "is not the same repository as\n"
                               "'%s'"), url, rbaton->sess->repos_url);

  /* Convert the relpath to an fspath */
  if (relpath[0] == '\0')
    fs_path = "/";
  else
    fs_path = FUNC1(pool, "/", relpath, SVN_VA_NULL);

  return FUNC3(rbaton->report_baton, path, fs_path, revision,
                              depth, start_empty, lock_token, pool);
}