#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_18__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_ATOMIC_REVPROPS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_1__ const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_1__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_1__ const*) ; 

svn_error_t *
FUNC8(svn_ra_session_t *session,
                                 const char *lock_revprop_name,
                                 const svn_string_t *mylocktoken,
                                 apr_pool_t *scratch_pool)
{
  svn_string_t *reposlocktoken;
  svn_boolean_t be_atomic;

  FUNC0(FUNC5(session, &be_atomic,
                                SVN_RA_CAPABILITY_ATOMIC_REVPROPS,
                                scratch_pool));
  FUNC0(FUNC6(session, 0, lock_revprop_name,
                          &reposlocktoken, scratch_pool));
  if (reposlocktoken && FUNC7(reposlocktoken, mylocktoken))
    {
      svn_error_t *err;

      err = FUNC4(session, 0, lock_revprop_name,
                                    be_atomic ? &mylocktoken : NULL, NULL,
                                    scratch_pool);
      if (FUNC2(err))
        {
          return FUNC3(err->apr_err, err,
                                   FUNC1("Lock was stolen by '%s'; unable to "
                                     "remove it"), reposlocktoken->data);
        }
      else
        FUNC0(err);
    }

  return SVN_NO_ERROR;
}