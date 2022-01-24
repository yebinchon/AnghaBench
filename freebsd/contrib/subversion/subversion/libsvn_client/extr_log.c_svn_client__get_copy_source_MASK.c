#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  void* svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
struct TYPE_21__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct TYPE_22__ {char const* url; int /*<<< orphan*/  rev; } ;
typedef  TYPE_2__ svn_client__pathrev_t ;
struct TYPE_23__ {char* path; void* rev; int /*<<< orphan*/ * pool; int /*<<< orphan*/  is_first; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ copyfrom_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SVN_ERR_ENTRY_MISSING_URL ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 scalar_t__ SVN_ERR_RA_DAV_REQUEST_FAILED ; 
 void* SVN_INVALID_REVNUM ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  copyfrom_info_receiver ; 
 TYPE_1__* FUNC2 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ **,TYPE_2__**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_2__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (char const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC15(const char **original_repos_relpath,
                            svn_revnum_t *original_revision,
                            const char *path_or_url,
                            const svn_opt_revision_t *revision,
                            svn_ra_session_t *ra_session,
                            svn_client_ctx_t *ctx,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  copyfrom_info_t copyfrom_info = { 0 };
  apr_pool_t *sesspool = FUNC11(scratch_pool);
  svn_client__pathrev_t *at_loc;
  const char *old_session_url = NULL;

  copyfrom_info.is_first = TRUE;
  copyfrom_info.path = NULL;
  copyfrom_info.rev = SVN_INVALID_REVNUM;
  copyfrom_info.pool = result_pool;

  if (!ra_session)
    {
      FUNC0(FUNC3(&ra_session, &at_loc,
                                                path_or_url, NULL,
                                                revision, revision,
                                                ctx, sesspool));
    }
  else
    {
      const char *url;
      if (FUNC10(path_or_url))
        url = path_or_url;
      else
        {
          FUNC0(FUNC5(&url, path_or_url, ctx, sesspool,
                                            sesspool));

          if (! url)
            return FUNC8(SVN_ERR_ENTRY_MISSING_URL, NULL,
                                     FUNC1("'%s' has no URL"), path_or_url);
        }

      FUNC0(FUNC2(&old_session_url, ra_session,
                                                url, sesspool));

      err = FUNC4(&at_loc, ra_session, path_or_url,
                                            revision, revision, ctx,
                                            sesspool);

      /* On error reparent back (and return), otherwise reparent to new
         location */
      FUNC0(FUNC7(
                err,
                FUNC14(ra_session, err ? old_session_url
                                                : at_loc->url, sesspool)));
    }

  /* Find the copy source.  Walk the location segments to find the revision
     at which this node was created (copied or added). */

  err = FUNC13(ra_session, "", at_loc->rev, at_loc->rev,
                                     SVN_INVALID_REVNUM,
                                     copyfrom_info_receiver, &copyfrom_info,
                                     scratch_pool);

  if (old_session_url)
    err = FUNC7(
                    err,
                    FUNC14(ra_session, old_session_url, sesspool));

  FUNC12(sesspool);

  if (err)
    {
      if (err->apr_err == SVN_ERR_FS_NOT_FOUND ||
          err->apr_err == SVN_ERR_RA_DAV_REQUEST_FAILED)
        {
          /* A locally-added but uncommitted versioned resource won't
             exist in the repository. */
            FUNC6(err);
            err = SVN_NO_ERROR;

            *original_repos_relpath = NULL;
            *original_revision = SVN_INVALID_REVNUM;
        }
      return FUNC9(err);
    }

  *original_repos_relpath = copyfrom_info.path;
  *original_revision = copyfrom_info.rev;
  return SVN_NO_ERROR;
}