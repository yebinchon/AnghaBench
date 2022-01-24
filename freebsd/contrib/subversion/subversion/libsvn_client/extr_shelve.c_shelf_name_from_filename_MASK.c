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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(char **name,
                         const char *filename,
                         apr_pool_t *result_pool)
{
  size_t len = FUNC4(filename);

  if (len > 6 && FUNC3(filename + len - 6, ".patch") == 0)
    {
      char *codename = FUNC1(result_pool, filename, len - 6);
      FUNC0(FUNC2(name, codename, result_pool));
    }
  return SVN_NO_ERROR;
}