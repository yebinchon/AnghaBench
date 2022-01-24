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
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const**,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 

svn_error_t *
FUNC3(const char **pabsolute,
                      const char *relative,
                      apr_pool_t *pool)
{
  if (FUNC2(relative))
    {
      *pabsolute = FUNC0(pool, relative);
      return SVN_NO_ERROR;
    }

  return FUNC1(pabsolute, relative, pool);
}