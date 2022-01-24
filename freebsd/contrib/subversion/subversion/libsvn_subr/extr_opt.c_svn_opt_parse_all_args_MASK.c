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
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {scalar_t__ ind; scalar_t__ argc; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_1__ apr_getopt_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ARRAY_SIZE ; 
 int /*<<< orphan*/  SVN_ERR_CL_ARG_PARSING_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(apr_array_header_t **args_p,
                       apr_getopt_t *os,
                       apr_pool_t *pool)
{
  apr_array_header_t *args
    = FUNC0(pool, DEFAULT_ARRAY_SIZE, sizeof(const char *));

  if (os->ind > os->argc)
    {
      return FUNC2(SVN_ERR_CL_ARG_PARSING_ERROR, 0, NULL);
    }
  while (os->ind < os->argc)
    {
      FUNC1(args, os->argv[os->ind++], pool);
    }

  *args_p = args;
  return SVN_NO_ERROR;
}