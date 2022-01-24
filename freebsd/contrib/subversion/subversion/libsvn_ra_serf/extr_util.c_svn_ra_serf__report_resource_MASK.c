#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  me_resource; } ;
typedef  TYPE_1__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const**,TYPE_1__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(const char **report_target,
                             svn_ra_serf__session_t *session,
                             apr_pool_t *pool)
{
  /* If we have HTTP v2 support, we want to report against the 'me'
     resource. */
  if (FUNC1(session))
    *report_target = FUNC2(pool, session->me_resource);

  /* Otherwise, we'll use the default VCC. */
  else
    FUNC0(FUNC3(report_target, session, pool));

  return SVN_NO_ERROR;
}