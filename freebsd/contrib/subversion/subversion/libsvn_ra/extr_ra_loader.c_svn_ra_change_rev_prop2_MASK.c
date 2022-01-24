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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_7__ {TYPE_1__* vtable; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/ * (* change_rev_prop ) (TYPE_2__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const* const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_ATOMIC_REVPROPS ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const* const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *FUNC7(svn_ra_session_t *session,
                                     svn_revnum_t rev,
                                     const char *name,
                                     const svn_string_t *const *old_value_p,
                                     const svn_string_t *value,
                                     apr_pool_t *pool)
{
  FUNC1(FUNC2(rev));

  /* If an old value was specified, make sure the server supports
   * specifying it. */
  if (old_value_p)
    {
      svn_boolean_t has_atomic_revprops;

      FUNC0(FUNC6(session, &has_atomic_revprops,
                                    SVN_RA_CAPABILITY_ATOMIC_REVPROPS,
                                    pool));

      if (!has_atomic_revprops)
        /* API violation.  (Should be an ASSERT, but gstein talked me
         * out of it.) */
        return FUNC5(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                                 FUNC3("Specifying 'old_value_p' is not allowed when "
                                   "the '%s' capability is not advertised, and "
                                   "could indicate a bug in your client"),
                                   SVN_RA_CAPABILITY_ATOMIC_REVPROPS);
    }

  return session->vtable->change_rev_prop(session, rev, name,
                                          old_value_p, value, pool);
}