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
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_5__ {int /*<<< orphan*/  blncache; } ;
typedef  TYPE_1__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const**,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,TYPE_1__*,char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_revnum_t *youngest,
                       const char **basecoll_url,
                       svn_ra_serf__session_t *session,
                       const char *vcc_url,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  const char *baseline_url;
  const char *bc_url;

  /* Fetching DAV:checked-in from the VCC (with no Label: to specify a
     revision) will return the latest Baseline resource's URL.  */
  FUNC0(FUNC7(&baseline_url, session, vcc_url,
                                      SVN_INVALID_REVNUM,
                                      "checked-in",
                                      scratch_pool, scratch_pool));
  if (!baseline_url)
    {
      return FUNC4(SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED, NULL,
                              FUNC1("The OPTIONS response did not include "
                                "the requested checked-in value"));
    }
  baseline_url = FUNC8(baseline_url, scratch_pool);

  /* From the Baseline resource, we can fetch the DAV:baseline-collection
     and DAV:version-name properties. The latter is the revision number,
     which is formally the name used in Label: headers.  */

  /* First check baseline information cache. */
  FUNC0(FUNC5(&bc_url,
                                                  youngest,
                                                  session->blncache,
                                                  baseline_url,
                                                  scratch_pool));
  if (!bc_url)
    {
      FUNC0(FUNC3(youngest, &bc_url, session,
                                     baseline_url, SVN_INVALID_REVNUM,
                                     scratch_pool, scratch_pool));
      FUNC0(FUNC6(session->blncache,
                                        baseline_url, *youngest,
                                        bc_url, scratch_pool));
    }

  if (basecoll_url != NULL)
    *basecoll_url = FUNC2(result_pool, bc_url);

  return SVN_NO_ERROR;
}