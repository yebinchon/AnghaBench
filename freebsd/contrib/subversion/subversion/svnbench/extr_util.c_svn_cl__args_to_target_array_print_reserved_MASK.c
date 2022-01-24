#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ SVN_ERR_RESERVED_FILENAME_SPECIFIED ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

svn_error_t *
FUNC4(apr_array_header_t **targets,
                                            apr_getopt_t *os,
                                            const apr_array_header_t *known_targets,
                                            svn_client_ctx_t *ctx,
                                            svn_boolean_t keep_last_origpath_on_truepath_collision,
                                            apr_pool_t *pool)
{
  svn_error_t *err = FUNC0(targets,
                                                      os,
                                                      known_targets,
                                                      ctx,
                                                      keep_last_origpath_on_truepath_collision,
                                                      pool);
  if (err)
    {
      if (err->apr_err ==  SVN_ERR_RESERVED_FILENAME_SPECIFIED)
        {
          FUNC3(err, stderr, FALSE, "svn: Skipping argument: ");
          FUNC1(err);
        }
      else
        return FUNC2(err);
    }
  return SVN_NO_ERROR;
}