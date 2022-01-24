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
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_8__ {int /*<<< orphan*/  blncache; int /*<<< orphan*/  rev_root_stub; } ;
typedef  TYPE_1__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const**,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const**,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(const char **bc_url,
                  svn_revnum_t *revnum_used,
                  svn_ra_serf__session_t *session,
                  svn_revnum_t revision,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  /* If we detected HTTP v2 support on the server, we can construct
     the baseline collection URL ourselves, and fetch the latest
     revision (if needed) with an OPTIONS request.  */
  if (FUNC2(session))
    {
      if (FUNC1(revision))
        {
          *revnum_used = revision;
        }
      else
        {
          FUNC0(FUNC8(
                    revnum_used, session, scratch_pool));
        }

      *bc_url = FUNC3(result_pool, "%s/%ld",
                             session->rev_root_stub, *revnum_used);
    }

  /* Otherwise, we fall back to the old VCC_URL PROPFIND hunt.  */
  else
    {
      const char *vcc_url;

      FUNC0(FUNC7(&vcc_url, session, scratch_pool));

      if (FUNC1(revision))
        {
          /* First check baseline information cache. */
          FUNC0(FUNC5(bc_url,
                                                   session->blncache,
                                                   revision, result_pool));
          if (!*bc_url)
            {
              FUNC0(FUNC4(NULL, bc_url, session,
                                             vcc_url, revision,
                                             result_pool, scratch_pool));
              FUNC0(FUNC6(session->blncache, NULL,
                                                revision, *bc_url,
                                                scratch_pool));
            }

          *revnum_used = revision;
        }
      else
        {
          FUNC0(FUNC9(revnum_used, bc_url,
                                         session, vcc_url,
                                         result_pool, scratch_pool));
        }
    }

  return SVN_NO_ERROR;
}