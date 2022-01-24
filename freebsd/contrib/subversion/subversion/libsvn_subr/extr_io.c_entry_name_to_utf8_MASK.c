#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ APR_EINVAL ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (char const**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char **name_p,
                   const char *name,
                   const char *parent,
                   apr_pool_t *pool)
{
#if defined(WIN32) || defined(DARWIN)
  *name_p = apr_pstrdup(pool, name);
  return SVN_NO_ERROR;
#else
  svn_error_t *err = FUNC4(name_p, name, pool);
  if (err && err->apr_err == APR_EINVAL)
    {
      return FUNC3(err->apr_err, err,
                               FUNC0("Error converting entry "
                                 "in directory '%s' to UTF-8"),
                               FUNC2(parent, pool));
    }
  return err;
#endif
}