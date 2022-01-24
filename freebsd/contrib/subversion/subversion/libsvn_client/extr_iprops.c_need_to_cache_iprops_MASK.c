#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_10__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct TYPE_11__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_1__* SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_boolean_t *needs_cache,
                     const char *local_abspath,
                     svn_ra_session_t *ra_session,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *scratch_pool)
{
  svn_boolean_t is_wc_root;
  svn_boolean_t is_switched;
  svn_error_t *err;

  err = FUNC6(&is_wc_root, &is_switched, NULL,
                          ctx->wc_ctx, local_abspath,
                           scratch_pool);

  /* LOCAL_ABSPATH doesn't need a cache if it doesn't exist. */
  if (err)
    {
      if (err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
        {
          FUNC2(err);
          is_wc_root = FALSE;
          is_switched = FALSE;
        }
      else
        {
          return FUNC3(err);
        }
    }

  /* Starting assumption. */
  *needs_cache = FALSE;

  if (is_wc_root || is_switched)
    {
      const char *session_url;
      const char *session_root_url;

      /* Looks likely that we need an inherited properties cache...Unless
         LOCAL_ABSPATH is a WC root that points to the repos root.  Then it
         doesn't need a cache because it has nowhere to inherit from.  Check
         for that case. */
      FUNC0(FUNC5(ra_session, &session_url, scratch_pool));
      FUNC0(FUNC4(ra_session, &session_root_url,
                                     scratch_pool));

      if (FUNC1(session_root_url, session_url) != 0)
        *needs_cache = TRUE;
    }

  return SVN_NO_ERROR;
}