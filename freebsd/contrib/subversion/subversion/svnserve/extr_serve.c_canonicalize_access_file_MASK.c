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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ repository_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const**,char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(const char **access_file, repository_t *repository,
                         const char *repos_root, apr_pool_t *pool)
{
  if (FUNC4(*access_file))
    {
      *access_file = FUNC6(*access_file, pool);
    }
  else if (FUNC3(*access_file))
    {
      const char *repos_root_url;

      FUNC0(FUNC7(&repos_root_url, repos_root,
                                               pool));
      FUNC0(FUNC5(access_file, *access_file,
                                                  repos_root_url, pool));
      *access_file = FUNC6(*access_file, pool);
    }
  else
    {
      *access_file = FUNC1(*access_file, pool);
      *access_file = FUNC2(repository->base, *access_file, pool);
    }

  return SVN_NO_ERROR;
}