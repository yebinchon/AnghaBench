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
struct TYPE_3__ {int format; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ svn_repos_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_REPOS_UNSUPPORTED_VERSION ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS__FORMAT ; 
 int SVN_REPOS__FORMAT_NUMBER ; 
 int SVN_REPOS__FORMAT_NUMBER_LEGACY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_repos_t *repos,
                   apr_pool_t *pool)
{
  int format;
  const char *format_path;

  format_path = FUNC2(repos->path, SVN_REPOS__FORMAT, pool);
  FUNC0(FUNC4(&format, format_path, pool));

  if (format != SVN_REPOS__FORMAT_NUMBER &&
      format != SVN_REPOS__FORMAT_NUMBER_LEGACY)
    {
      return FUNC3
        (SVN_ERR_REPOS_UNSUPPORTED_VERSION, NULL,
         FUNC1("Expected repository format '%d' or '%d'; found format '%d'"),
         SVN_REPOS__FORMAT_NUMBER_LEGACY, SVN_REPOS__FORMAT_NUMBER,
         format);
    }

  repos->format = format;

  return SVN_NO_ERROR;
}