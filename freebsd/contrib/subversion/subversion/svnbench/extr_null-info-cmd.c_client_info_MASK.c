#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_20__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_lock_t ;
struct TYPE_21__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
struct TYPE_22__ {scalar_t__ kind; } ;
typedef  TYPE_3__ svn_dirent_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct TYPE_23__ {int /*<<< orphan*/  rev; int /*<<< orphan*/  url; } ;
typedef  TYPE_4__ svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_ILLEGAL_URL ; 
 scalar_t__ SVN_ERR_RA_NOT_IMPLEMENTED ; 
 scalar_t__ SVN_ERR_UNSUPPORTED_FEATURE ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,char*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,TYPE_4__**,char const*,int /*<<< orphan*/ *,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_empty ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_2__*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_opt_revision_head ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(const char *abspath_or_url,
            const svn_opt_revision_t *peg_revision,
            const svn_opt_revision_t *revision,
            svn_depth_t depth,
            svn_boolean_t fetch_excluded,
            svn_boolean_t fetch_actual_only,
            const apr_array_header_t *changelists,
            int *counter,
            svn_client_ctx_t *ctx,
            apr_pool_t *pool)
{
  svn_ra_session_t *ra_session;
  svn_client__pathrev_t *pathrev;
  svn_lock_t *lock;
  const char *base_name;
  svn_dirent_t *the_ent;
  svn_error_t *err;

  if (depth == svn_depth_unknown)
    depth = svn_depth_empty;

  /* Go repository digging instead. */

  /* Trace rename history (starting at path_or_url@peg_revision) and
     return RA session to the possibly-renamed URL as it exists in REVISION.
     The ra_session returned will be anchored on this "final" URL. */
  FUNC0(FUNC3(&ra_session, &pathrev,
                                            abspath_or_url, NULL, peg_revision,
                                            revision, ctx, pool));

  FUNC10(NULL, &base_name, pathrev->url, pool);

  /* Get the dirent for the URL itself. */
  FUNC0(FUNC9(ra_session, "", pathrev->rev, &the_ent, pool));

  if (! the_ent)
    return FUNC5(SVN_ERR_RA_ILLEGAL_URL, NULL,
                             FUNC1("URL '%s' non-existent in revision %ld"),
                             pathrev->url, pathrev->rev);

  /* check for locks */
  err = FUNC7(ra_session, &lock, "", pool);

  /* An old mod_dav_svn will always work; there's nothing wrong with
      doing a PROPFIND for a property named "DAV:supportedlock". But
      an old svnserve will error. */
  if (err && err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED)
    {
      FUNC4(err);
      lock = NULL;
    }
  else if (err)
    return FUNC6(err);

  /* Push the URL's dirent (and lock) at the callback.*/
  ++(*counter);

  /* Possibly recurse, using the original RA session. */
  if (depth > svn_depth_empty && (the_ent->kind == svn_node_dir))
    {
      apr_hash_t *locks;

      if (peg_revision->kind == svn_opt_revision_head)
        {
          err = FUNC8(ra_session, &locks, "", depth, pool);

          /* Catch specific errors thrown by old mod_dav_svn or svnserve. */
          if (err &&
              (err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED
               || err->apr_err == SVN_ERR_UNSUPPORTED_FEATURE))
            FUNC4(err);
          else if (err)
            return FUNC6(err);
        }

      FUNC0(FUNC2(ra_session, pathrev, "",
                            counter, depth, ctx, pool));
    }

  return SVN_NO_ERROR;
}