#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_repos_authz_access_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/  pool; TYPE_3__* client_info; TYPE_2__* repository; } ;
typedef  TYPE_1__ server_baton_t ;
struct TYPE_7__ {scalar_t__ username_case; int /*<<< orphan*/  authz_repos_name; int /*<<< orphan*/  authzdb; } ;
typedef  TYPE_2__ repository_t ;
struct TYPE_8__ {char* authz_user; scalar_t__ user; } ;
typedef  TYPE_3__ client_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ CASE_FORCE_LOWER ; 
 scalar_t__ CASE_FORCE_UPPER ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC6(svn_boolean_t *allowed,
                                       const char *path,
                                       svn_repos_authz_access_t required,
                                       server_baton_t *b,
                                       apr_pool_t *pool)
{
  repository_t *repository = b->repository;
  client_info_t *client_info = b->client_info;

  /* If authz cannot be performed, grant access.  This is NOT the same
     as the default policy when authz is performed on a path with no
     rules.  In the latter case, the default is to deny access, and is
     set by svn_repos_authz_check_access. */
  if (!repository->authzdb)
    {
      *allowed = TRUE;
      return SVN_NO_ERROR;
    }

  /* If the authz request is for the empty path (ie. ""), replace it
     with the root path.  This happens because of stripping done at
     various levels in svnserve that remove the leading / on an
     absolute path. Passing such a malformed path to the authz
     routines throws them into an infinite loop and makes them miss
     ACLs. */
  if (path && *path != '/')
    path = FUNC4(path, pool);

  /* If we have a username, and we've not yet used it + any username
     case normalization that might be requested to determine "the
     username we used for authz purposes", do so now. */
  if (client_info->user && (! client_info->authz_user))
    {
      char *authz_user = FUNC1(b->pool, client_info->user);
      if (repository->username_case == CASE_FORCE_UPPER)
        FUNC2(authz_user, TRUE);
      else if (repository->username_case == CASE_FORCE_LOWER)
        FUNC2(authz_user, FALSE);

      client_info->authz_user = authz_user;
    }

  FUNC0(FUNC5(repository->authzdb,
                                       repository->authz_repos_name,
                                       path, client_info->authz_user,
                                       required, allowed, pool));
  if (!*allowed)
    FUNC0(FUNC3(path, required, b, pool));

  return SVN_NO_ERROR;
}