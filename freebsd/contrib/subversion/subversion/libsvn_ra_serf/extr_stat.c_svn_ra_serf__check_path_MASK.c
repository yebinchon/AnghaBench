#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_16__ {TYPE_3__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
struct TYPE_15__ {char* path; } ;
struct TYPE_17__ {TYPE_1__ session_url; } ;
typedef  TYPE_3__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
struct TYPE_18__ {scalar_t__ apr_err; } ;
typedef  TYPE_4__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_PROPS_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  check_path_props ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  svn_node_none ; 
 char* FUNC7 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ **,TYPE_3__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC10 (char const**,int /*<<< orphan*/ *,TYPE_3__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_ra_session_t *ra_session,
                        const char *relpath,
                        svn_revnum_t revision,
                        svn_node_kind_t *kind,
                        apr_pool_t *scratch_pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  apr_hash_t *props;
  svn_error_t *err;
  const char *url;

  url = session->session_url.path;

  /* If we have a relative path, append it. */
  if (relpath)
    url = FUNC7(url, relpath, scratch_pool);

  /* If we were given a specific revision, get a URL that refers to that
     specific revision (rather than floating with HEAD).  */
  if (FUNC1(revision))
    {
      FUNC0(FUNC10(&url, NULL /* latest_revnum */,
                                          session,
                                          url, revision,
                                          scratch_pool, scratch_pool));
    }

  /* URL is stable, so we use SVN_INVALID_REVNUM since it is now irrelevant.
     Or we started with SVN_INVALID_REVNUM and URL may be floating.  */
  err = FUNC9(&props, session,
                                      url, SVN_INVALID_REVNUM,
                                      check_path_props,
                                      scratch_pool, scratch_pool);

  if (err && err->apr_err == SVN_ERR_FS_NOT_FOUND)
    {
      FUNC5(err);
      *kind = svn_node_none;
    }
  else
    {
      apr_hash_t *dav_props;
      const char *res_type;

      /* Any other error, raise to caller. */
      FUNC0(err);

      dav_props = FUNC3(props, "DAV:", 4);
      res_type = FUNC8(dav_props, "resourcetype");
      if (!res_type)
        {
          /* How did this happen? */
          return FUNC6(SVN_ERR_RA_DAV_PROPS_NOT_FOUND, NULL,
                                 FUNC2("The PROPFIND response did not include the "
                                   "requested resourcetype value"));
        }

      if (FUNC4(res_type, "collection") == 0)
        *kind = svn_node_dir;
      else
        *kind = svn_node_file;
    }

  return SVN_NO_ERROR;
}