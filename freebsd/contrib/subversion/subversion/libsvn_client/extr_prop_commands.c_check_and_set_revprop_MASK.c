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
struct TYPE_8__ {scalar_t__ data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_OUT_OF_DATE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*,TYPE_1__*) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_revnum_t *set_rev,
                      svn_ra_session_t *ra_session,
                      const char *propname,
                      const svn_string_t *original_propval,
                      const svn_string_t *propval,
                      apr_pool_t *pool)
{
  if (original_propval)
    {
      /* Ensure old value hasn't changed behind our back. */
      svn_string_t *current;
      FUNC0(FUNC4(ra_session, *set_rev, propname, &current, pool));

      if (original_propval->data && (! current))
        {
          return FUNC2(
                  SVN_ERR_RA_OUT_OF_DATE, NULL,
                  FUNC1("revprop '%s' in r%ld is unexpectedly absent "
                    "in repository (maybe someone else deleted it?)"),
                  propname, *set_rev);
        }
      else if (original_propval->data
               && (! FUNC5(original_propval, current)))
        {
          return FUNC2(
                  SVN_ERR_RA_OUT_OF_DATE, NULL,
                  FUNC1("revprop '%s' in r%ld has unexpected value "
                    "in repository (maybe someone else changed it?)"),
                  propname, *set_rev);
        }
      else if ((! original_propval->data) && current)
        {
          return FUNC2(
                  SVN_ERR_RA_OUT_OF_DATE, NULL,
                  FUNC1("revprop '%s' in r%ld is unexpectedly present "
                    "in repository (maybe someone else set it?)"),
                  propname, *set_rev);
        }
    }

  FUNC0(FUNC3(ra_session, *set_rev, propname,
                                  NULL, propval, pool));

  return SVN_NO_ERROR;
}