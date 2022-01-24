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
typedef  int /*<<< orphan*/  svn_mergeinfo_t ;
struct TYPE_6__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*) ; 
 TYPE_1__* FUNC3 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_mergeinfo_t *mergeinfo,
                    const char *input,
                    apr_pool_t *pool)
{
  svn_error_t *err;

  *mergeinfo = FUNC4(pool);
  err = FUNC1(&input, input + FUNC2(input), *mergeinfo, pool);

  /* Always return SVN_ERR_MERGEINFO_PARSE_ERROR as the topmost error. */
  if (err && err->apr_err != SVN_ERR_MERGEINFO_PARSE_ERROR)
    err = FUNC3(SVN_ERR_MERGEINFO_PARSE_ERROR, err,
                            FUNC0("Could not parse mergeinfo string '%s'"),
                            input);
  return err;
}