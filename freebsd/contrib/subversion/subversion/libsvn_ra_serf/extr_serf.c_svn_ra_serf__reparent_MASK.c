#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
struct TYPE_8__ {void* path; } ;
struct TYPE_10__ {int /*<<< orphan*/  pool; void* session_url_str; TYPE_1__ session_url; int /*<<< orphan*/  repos_root_str; } ;
typedef  TYPE_3__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_11__ {char const* path; } ;
typedef  TYPE_4__ apr_uri_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_ILLEGAL_URL ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (void*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const**,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 

svn_error_t *
FUNC8(svn_ra_session_t *ra_session,
                      const char *url,
                      apr_pool_t *pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  apr_uri_t new_url;

  /* If it's the URL we already have, wave our hands and do nothing. */
  if (FUNC3(session->session_url_str, url) == 0)
    {
      return SVN_NO_ERROR;
    }

  if (!session->repos_root_str)
    {
      const char *vcc_url;
      FUNC0(FUNC5(&vcc_url, session, pool));
    }

  if (!FUNC7(session->repos_root_str, url))
    {
      return FUNC4(
          SVN_ERR_RA_ILLEGAL_URL, NULL,
          FUNC1("URL '%s' is not a child of the session's repository root "
            "URL '%s'"), url, session->repos_root_str);
    }

  FUNC0(FUNC6(&new_url, url, pool));

  /* ### Maybe we should use a string buffer for these strings so we
     ### don't allocate memory in the session on every reparent? */
  session->session_url.path = FUNC2(session->pool, new_url.path);
  session->session_url_str = FUNC2(session->pool, url);

  return SVN_NO_ERROR;
}