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
typedef  int /*<<< orphan*/  server_baton_t ;
typedef  scalar_t__ apr_status_t ;

/* Variables and functions */
 scalar_t__ SVN_ERR_AUTHN_FAILED ; 
 scalar_t__ SVN_ERR_AUTHZ_INVALID_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_error_t *error,
                    server_baton_t *server)
{
  if (   error
      && (   error->apr_err == SVN_ERR_AUTHZ_INVALID_CONFIG
          || error->apr_err == SVN_ERR_AUTHN_FAILED))
    {
      apr_status_t apr_err = error->apr_err;
      FUNC0(error, server);

      /* Now that we've logged the error, clear it and return a
       * nice, generic error to the user:
       * http://subversion.tigris.org/issues/show_bug.cgi?id=2271 */
      FUNC1(error);
      return FUNC2(apr_err, NULL, NULL);
    }

  return error;
}