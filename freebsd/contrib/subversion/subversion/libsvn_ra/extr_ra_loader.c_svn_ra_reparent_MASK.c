#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* vtable; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/ * (* reparent ) (TYPE_2__*,char const*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_ILLEGAL_URL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 

svn_error_t *FUNC6(svn_ra_session_t *session,
                             const char *url,
                             apr_pool_t *pool)
{
  const char *repos_root;

  /* Make sure the new URL is in the same repository, so that the
     implementations don't have to do it. */
  FUNC0(FUNC4(session, &repos_root, pool));
  if (! FUNC5(repos_root, url))
    return FUNC3(SVN_ERR_RA_ILLEGAL_URL, NULL,
                             FUNC1("'%s' isn't in the same repository as '%s'"),
                             url, repos_root);

  return session->vtable->reparent(session, url, pool);
}