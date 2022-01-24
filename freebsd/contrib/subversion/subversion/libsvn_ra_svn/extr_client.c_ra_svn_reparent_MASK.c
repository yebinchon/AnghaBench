#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char const* repos_root; } ;
typedef  TYPE_2__ svn_ra_svn_conn_t ;
struct TYPE_10__ {TYPE_2__* conn; TYPE_4__* parent; } ;
typedef  TYPE_3__ svn_ra_svn__session_baton_t ;
struct TYPE_11__ {int /*<<< orphan*/  path; int /*<<< orphan*/  client_url; TYPE_1__* server_url; } ;
typedef  TYPE_4__ svn_ra_svn__parent_t ;
struct TYPE_12__ {TYPE_3__* priv; } ;
typedef  TYPE_5__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {char const* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC5(svn_ra_session_t *ra_session,
                                    const char *url,
                                    apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess = ra_session->priv;
  svn_ra_svn__parent_t *parent = sess->parent;
  svn_ra_svn_conn_t *conn = sess->conn;
  const char *path;

  /* Eliminate reparent requests if they are to a sub-path of the
     server's current parent path. */
  path = FUNC4(parent->server_url->data, url, pool);
  if (!path)
    {
      /* Send the request to the server.

         If within the same repository, reparent to the repo root
         because this will maximize the chance to turn future reparent
         requests into a client-side update of the rel path. */
      path = conn->repos_root
           ? FUNC4(conn->repos_root, url, pool)
           : NULL;

      if (path)
        FUNC0(FUNC1(ra_session, conn->repos_root, pool));
      else
        FUNC0(FUNC1(ra_session, url, pool));
    }

  /* Update the local PARENT information.
     PARENT.SERVER_BASE_URL is already up-to-date. */
  FUNC2(parent->client_url, url);
  if (path)
    FUNC2(parent->path, path);
  else
    FUNC3(parent->path);

  return SVN_NO_ERROR;
}