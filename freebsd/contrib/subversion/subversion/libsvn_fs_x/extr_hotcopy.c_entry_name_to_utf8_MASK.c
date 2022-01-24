#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ APR_EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (char const**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const char **name_p,
                   const char *name,
                   const char *parent,
                   apr_pool_t *result_pool)
{
  svn_error_t *err = FUNC3(name_p, name, result_pool);
  if (err && err->apr_err == APR_EINVAL)
    {
      return FUNC2(err->apr_err, err,
                               FUNC0("Error converting entry "
                                 "in directory '%s' to UTF-8"),
                               FUNC1(parent, result_pool));
    }
  return err;
}