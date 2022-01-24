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
struct TYPE_3__ {int /*<<< orphan*/  hook_path; } ;
typedef  TYPE_1__ svn_repos_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS__HOOK_DESC_EXT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_repos_t *repos, const char *script_name,
                         const char *description,
                         const char *script,
                         apr_pool_t *pool)
{
  const char *template_path
    = FUNC3(repos->hook_path,
                      FUNC1(pool, "%s%s",
                                   script_name, SVN_REPOS__HOOK_DESC_EXT),
                      pool);
  const char *contents
    = FUNC2(script_name, description, script, pool);

  FUNC0(FUNC4(template_path, contents, pool));
  FUNC0(FUNC5(template_path, TRUE, FALSE, pool));
  return SVN_NO_ERROR;
}