#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int svn_repos_authz_access_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_8__ {TYPE_1__* client_info; } ;
typedef  TYPE_2__ server_baton_t ;
typedef  enum access_type { ____Placeholder_access_type } access_type ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {scalar_t__ user; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int READ_ACCESS ; 
 scalar_t__ TRUE ; 
 int WRITE_ACCESS ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__*,char const*,int,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int svn_authz_write ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_boolean_t FUNC4(apr_pool_t *pool,
                                   server_baton_t *baton,
                                   svn_repos_authz_access_t required,
                                   const char *path,
                                   svn_boolean_t needs_username)
{
  enum access_type req = (required & svn_authz_write) ?
    WRITE_ACCESS : READ_ACCESS;
  svn_boolean_t authorized;
  svn_error_t *err;

  /* Get authz's opinion on the access. */
  err = FUNC0(&authorized, path, required, baton, pool);

  /* If an error made lookup fail, deny access. */
  if (err)
    {
      FUNC2(err, baton);
      FUNC3(err);
      return FALSE;
    }

  /* If the required access is blanket-granted AND granted by authz
     AND we already have a username if one is required, then the
     lookup has succeeded. */
  if (FUNC1(baton) >= req
      && authorized
      && (! needs_username || baton->client_info->user))
    return TRUE;

  return FALSE;
}