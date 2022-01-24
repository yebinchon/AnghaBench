#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ SVN_ERR_BAD_DATE ; 
 TYPE_1__* SVN_NO_ERROR ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(const char **human_cstring,
                                      const char *data,
                                      apr_pool_t *pool)
{
  svn_error_t *err;
  apr_time_t when;

  err = FUNC3(&when, data, pool);
  if (err && err->apr_err == SVN_ERR_BAD_DATE)
    {
      FUNC1(err);

      *human_cstring = FUNC0("(invalid date)");
      return SVN_NO_ERROR;
    }
  else if (err)
    return FUNC2(err);

  *human_cstring = FUNC4(when, pool);

  return SVN_NO_ERROR;
}