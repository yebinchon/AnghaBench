#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* priv; } ;
typedef  TYPE_1__ svn_ra_session_t ;
struct TYPE_13__ {char const* useragent; char const* vcc_url; char const* activity_collection_url; char const* proxy_username; char const* proxy_password; char const* ssl_authorities; char const* uuid; char const* me_resource; char const* rev_stub; char const* txn_stub; char const* txn_root_stub; char const* vtxn_stub; char const* vtxn_root_stub; char const* server_allows_bulk; char const* repos_root_str; char const* session_url_str; int num_conns; scalar_t__ cur_conn; int /*<<< orphan*/  context; TYPE_4__** conns; int /*<<< orphan*/  session_url; scalar_t__ config; int /*<<< orphan*/  repos_root; int /*<<< orphan*/ * pool; int /*<<< orphan*/  blncache; void* supported_posts; scalar_t__ proxy_auth_attempts; void* capabilities; int /*<<< orphan*/ * pending_error; scalar_t__ auth_attempts; int /*<<< orphan*/ * auth_state; } ;
typedef  TYPE_2__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_14__ {int last_status_code; int /*<<< orphan*/  conn; TYPE_2__* session; int /*<<< orphan*/  bkt_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_ra_serf__conn_closed ; 
 int /*<<< orphan*/  svn_ra_serf__conn_setup ; 
 int /*<<< orphan*/  svn_ra_serf__progress ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC14(svn_ra_session_t *new_session,
                    svn_ra_session_t *old_session,
                    const char *new_session_url,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  svn_ra_serf__session_t *old_sess = old_session->priv;
  svn_ra_serf__session_t *new_sess;
  apr_status_t status;

  new_sess = FUNC3(result_pool, old_sess, sizeof(*new_sess));

  new_sess->pool = result_pool;

  if (new_sess->config)
    FUNC0(FUNC10(&new_sess->config, new_sess->config,
                                   result_pool));

  /* max_connections */
  /* using_ssl */
  /* using_compression */
  /* http10 */
  /* http20 */
  /* using_chunked_requests */
  /* detect_chunking */

  if (new_sess->useragent)
    new_sess->useragent = FUNC4(result_pool, new_sess->useragent);

  if (new_sess->vcc_url)
    new_sess->vcc_url = FUNC4(result_pool, new_sess->vcc_url);

  new_sess->auth_state = NULL;
  new_sess->auth_attempts = 0;

  /* Callback functions to get info from WC */
  /* wc_callbacks */
  /* wc_callback_baton */

  /* progress_func */
  /* progress_baton */

  /* cancel_func */
  /* cancel_baton */

  /* shim_callbacks */

  new_sess->pending_error = NULL;

  /* authn_types */

  /* Keys and values are static */
  if (new_sess->capabilities)
    new_sess->capabilities = FUNC1(result_pool, new_sess->capabilities);

  if (new_sess->activity_collection_url)
    {
      new_sess->activity_collection_url
                = FUNC4(result_pool, new_sess->activity_collection_url);
    }

   /* using_proxy */

  if (new_sess->proxy_username)
    {
      new_sess->proxy_username
                = FUNC4(result_pool, new_sess->proxy_username);
    }

  if (new_sess->proxy_password)
    {
      new_sess->proxy_password
                = FUNC4(result_pool, new_sess->proxy_password);
    }

  new_sess->proxy_auth_attempts = 0;

  /* trust_default_ca */

  if (new_sess->ssl_authorities)
    {
      new_sess->ssl_authorities = FUNC4(result_pool,
                                              new_sess->ssl_authorities);
    }

  if (new_sess->uuid)
    new_sess->uuid = FUNC4(result_pool, new_sess->uuid);

  /* timeout */
  /* supports_deadprop_count */

  if (new_sess->me_resource)
    new_sess->me_resource = FUNC4(result_pool, new_sess->me_resource);
  if (new_sess->rev_stub)
    new_sess->rev_stub = FUNC4(result_pool, new_sess->rev_stub);
  if (new_sess->txn_stub)
    new_sess->txn_stub = FUNC4(result_pool, new_sess->txn_stub);
  if (new_sess->txn_root_stub)
    new_sess->txn_root_stub = FUNC4(result_pool,
                                          new_sess->txn_root_stub);
  if (new_sess->vtxn_stub)
    new_sess->vtxn_stub = FUNC4(result_pool, new_sess->vtxn_stub);
  if (new_sess->vtxn_root_stub)
    new_sess->vtxn_root_stub = FUNC4(result_pool,
                                           new_sess->vtxn_root_stub);

  /* Keys and values are static */
  if (new_sess->supported_posts)
    new_sess->supported_posts = FUNC1(result_pool,
                                              new_sess->supported_posts);

  /* ### Can we copy this? */
  FUNC0(FUNC11(&new_sess->blncache,
                                       new_sess->pool));

  if (new_sess->server_allows_bulk)
    new_sess->server_allows_bulk = FUNC4(result_pool,
                                               new_sess->server_allows_bulk);

  if (new_sess->repos_root_str)
    {
      new_sess->repos_root_str = FUNC4(result_pool,
                                             new_sess->repos_root_str);
      FUNC0(FUNC12(&new_sess->repos_root,
                                     new_sess->repos_root_str,
                                     result_pool));
    }

  new_sess->session_url_str = FUNC4(result_pool, new_session_url);

  FUNC0(FUNC12(&new_sess->session_url,
                                 new_sess->session_url_str,
                                 result_pool));

  /* svn_boolean_t supports_inline_props */
  /* supports_rev_rsrc_replay */
  /* supports_svndiff1 */
  /* supports_svndiff2 */
  /* supports_put_result_checksum */
  /* conn_latency */

  new_sess->context = FUNC8(result_pool);

  FUNC0(FUNC5(new_sess, old_sess->config,
                      result_pool, scratch_pool));

  new_sess->conns[0] = FUNC2(result_pool,
                                   sizeof(*new_sess->conns[0]));
  new_sess->conns[0]->bkt_alloc =
          FUNC6(result_pool, NULL, NULL);
  new_sess->conns[0]->session = new_sess;
  new_sess->conns[0]->last_status_code = -1;

  /* go ahead and tell serf about the connection. */
  status =
    FUNC7(&new_sess->conns[0]->conn,
                            new_sess->context,
                            new_sess->session_url,
                            svn_ra_serf__conn_setup, new_sess->conns[0],
                            svn_ra_serf__conn_closed, new_sess->conns[0],
                            result_pool);
  if (status)
    return FUNC13(status, NULL);

  /* Set the progress callback. */
  FUNC9(new_sess->context, svn_ra_serf__progress,
                               new_sess);

  new_sess->num_conns = 1;
  new_sess->cur_conn = 0;

  new_session->priv = new_sess;

  return SVN_NO_ERROR;
}