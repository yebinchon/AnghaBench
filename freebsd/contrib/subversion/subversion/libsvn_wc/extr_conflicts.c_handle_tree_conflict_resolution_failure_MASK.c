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
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ SVN_ERR_WC_FOUND_CONFLICT ; 
 scalar_t__ SVN_ERR_WC_OBSTRUCTED_UPDATE ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char *local_abspath,
                                        svn_error_t *err,
                                        apr_hash_t *resolve_later)
{
  const char *dup_abspath;

  if (!resolve_later
      || (err->apr_err != SVN_ERR_WC_OBSTRUCTED_UPDATE
          && err->apr_err != SVN_ERR_WC_FOUND_CONFLICT))
    return FUNC3(err); /* Give up. Do not retry resolution later. */

  FUNC2(err);
  dup_abspath = FUNC1(FUNC0(resolve_later),
                            local_abspath);

  FUNC4(resolve_later, dup_abspath, dup_abspath);

  return SVN_NO_ERROR; /* Caller may retry after resolving other conflicts. */
}