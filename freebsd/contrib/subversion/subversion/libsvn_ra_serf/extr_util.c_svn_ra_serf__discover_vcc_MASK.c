#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_16__ {char* path; } ;
struct TYPE_18__ {char* vcc_url; int /*<<< orphan*/  pool; void* uuid; TYPE_14__ repos_root; scalar_t__ repos_root_str; TYPE_14__ session_url; } ;
typedef  TYPE_2__ svn_ra_serf__session_t ;
struct TYPE_19__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_DAV_PROP_NS_DAV ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 scalar_t__ SVN_ERR_RA_DAV_FORBIDDEN ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_14__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  base_props ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ **,TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC15 (char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC16(const char **vcc_url,
                          svn_ra_serf__session_t *session,
                          apr_pool_t *scratch_pool)
{
  const char *path;
  const char *relative_path;
  const char *uuid;

  /* If we've already got the information our caller seeks, just return it.  */
  if (session->vcc_url && session->repos_root_str)
    {
      *vcc_url = session->vcc_url;
      return SVN_NO_ERROR;
    }

  path = session->session_url.path;
  *vcc_url = NULL;
  uuid = NULL;

  do
    {
      apr_hash_t *props;
      svn_error_t *err;

      err = FUNC12(&props, session,
                                          path, SVN_INVALID_REVNUM,
                                          base_props,
                                          scratch_pool, scratch_pool);
      if (! err)
        {
          apr_hash_t *ns_props;

          ns_props = FUNC1(props, "DAV:", 4);
          *vcc_url = FUNC11(ns_props,
                                        "version-controlled-configuration");

          ns_props = FUNC8(props, SVN_DAV_PROP_NS_DAV);
          relative_path = FUNC11(ns_props,
                                             "baseline-relative-path");
          uuid = FUNC11(ns_props, "repository-uuid");
          break;
        }
      else
        {
          if ((err->apr_err != SVN_ERR_FS_NOT_FOUND) &&
              (err->apr_err != SVN_ERR_RA_DAV_FORBIDDEN))
            {
              return FUNC6(err);  /* found a _real_ error */
            }
          else
            {
              /* This happens when the file is missing in HEAD. */
              FUNC4(err);

              /* Okay, strip off a component from PATH. */
              path = FUNC15(path, scratch_pool);
            }
        }
    }
  while ((path[0] != '\0')
         && (! (path[0] == '/' && path[1] == '\0')));

  if (!*vcc_url)
    {
      return FUNC5(SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED, NULL,
                              FUNC0("The PROPFIND response did not include the "
                                "requested version-controlled-configuration "
                                "value"));
    }

  /* Store our VCC in our cache. */
  if (!session->vcc_url)
    {
      session->vcc_url = FUNC2(session->pool, *vcc_url);
    }

  /* Update our cached repository root URL. */
  if (!session->repos_root_str)
    {
      svn_stringbuf_t *url_buf;

      url_buf = FUNC13(path, scratch_pool);

      FUNC10(url_buf,
                                 FUNC9(relative_path));

      /* Now recreate the root_url. */
      session->repos_root = session->session_url;
      session->repos_root.path =
        (char *)FUNC7(url_buf->data, session->pool);
      session->repos_root_str =
        FUNC14(FUNC3(session->pool,
                                                  &session->repos_root, 0),
                                  session->pool);
    }

  /* Store the repository UUID in the cache. */
  if (!session->uuid)
    {
      session->uuid = FUNC2(session->pool, uuid);
    }

  return SVN_NO_ERROR;
}