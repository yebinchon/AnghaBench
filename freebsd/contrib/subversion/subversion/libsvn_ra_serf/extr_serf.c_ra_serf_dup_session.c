
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* priv; } ;
typedef TYPE_1__ svn_ra_session_t ;
struct TYPE_13__ {char const* useragent; char const* vcc_url; char const* activity_collection_url; char const* proxy_username; char const* proxy_password; char const* ssl_authorities; char const* uuid; char const* me_resource; char const* rev_stub; char const* txn_stub; char const* txn_root_stub; char const* vtxn_stub; char const* vtxn_root_stub; char const* server_allows_bulk; char const* repos_root_str; char const* session_url_str; int num_conns; scalar_t__ cur_conn; int context; TYPE_4__** conns; int session_url; scalar_t__ config; int repos_root; int * pool; int blncache; void* supported_posts; scalar_t__ proxy_auth_attempts; void* capabilities; int * pending_error; scalar_t__ auth_attempts; int * auth_state; } ;
typedef TYPE_2__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_14__ {int last_status_code; int conn; TYPE_2__* session; int bkt_alloc; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* apr_hash_copy (int *,void*) ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 TYPE_2__* apr_pmemdup (int *,TYPE_2__*,int) ;
 void* apr_pstrdup (int *,char const*) ;
 int load_config (TYPE_2__*,scalar_t__,int *,int *) ;
 int serf_bucket_allocator_create (int *,int *,int *) ;
 scalar_t__ serf_connection_create2 (int *,int ,int ,int ,TYPE_4__*,int ,TYPE_4__*,int *) ;
 int serf_context_create (int *) ;
 int serf_context_set_progress_cb (int ,int ,TYPE_2__*) ;
 int svn_config_copy_config (scalar_t__*,scalar_t__,int *) ;
 int svn_ra_serf__blncache_create (int *,int *) ;
 int svn_ra_serf__conn_closed ;
 int svn_ra_serf__conn_setup ;
 int svn_ra_serf__progress ;
 int svn_ra_serf__uri_parse (int *,char const*,int *) ;
 int * svn_ra_serf__wrap_err (scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
ra_serf_dup_session(svn_ra_session_t *new_session,
                    svn_ra_session_t *old_session,
                    const char *new_session_url,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  svn_ra_serf__session_t *old_sess = old_session->priv;
  svn_ra_serf__session_t *new_sess;
  apr_status_t status;

  new_sess = apr_pmemdup(result_pool, old_sess, sizeof(*new_sess));

  new_sess->pool = result_pool;

  if (new_sess->config)
    SVN_ERR(svn_config_copy_config(&new_sess->config, new_sess->config,
                                   result_pool));
  if (new_sess->useragent)
    new_sess->useragent = apr_pstrdup(result_pool, new_sess->useragent);

  if (new_sess->vcc_url)
    new_sess->vcc_url = apr_pstrdup(result_pool, new_sess->vcc_url);

  new_sess->auth_state = ((void*)0);
  new_sess->auth_attempts = 0;
  new_sess->pending_error = ((void*)0);




  if (new_sess->capabilities)
    new_sess->capabilities = apr_hash_copy(result_pool, new_sess->capabilities);

  if (new_sess->activity_collection_url)
    {
      new_sess->activity_collection_url
                = apr_pstrdup(result_pool, new_sess->activity_collection_url);
    }



  if (new_sess->proxy_username)
    {
      new_sess->proxy_username
                = apr_pstrdup(result_pool, new_sess->proxy_username);
    }

  if (new_sess->proxy_password)
    {
      new_sess->proxy_password
                = apr_pstrdup(result_pool, new_sess->proxy_password);
    }

  new_sess->proxy_auth_attempts = 0;



  if (new_sess->ssl_authorities)
    {
      new_sess->ssl_authorities = apr_pstrdup(result_pool,
                                              new_sess->ssl_authorities);
    }

  if (new_sess->uuid)
    new_sess->uuid = apr_pstrdup(result_pool, new_sess->uuid);




  if (new_sess->me_resource)
    new_sess->me_resource = apr_pstrdup(result_pool, new_sess->me_resource);
  if (new_sess->rev_stub)
    new_sess->rev_stub = apr_pstrdup(result_pool, new_sess->rev_stub);
  if (new_sess->txn_stub)
    new_sess->txn_stub = apr_pstrdup(result_pool, new_sess->txn_stub);
  if (new_sess->txn_root_stub)
    new_sess->txn_root_stub = apr_pstrdup(result_pool,
                                          new_sess->txn_root_stub);
  if (new_sess->vtxn_stub)
    new_sess->vtxn_stub = apr_pstrdup(result_pool, new_sess->vtxn_stub);
  if (new_sess->vtxn_root_stub)
    new_sess->vtxn_root_stub = apr_pstrdup(result_pool,
                                           new_sess->vtxn_root_stub);


  if (new_sess->supported_posts)
    new_sess->supported_posts = apr_hash_copy(result_pool,
                                              new_sess->supported_posts);


  SVN_ERR(svn_ra_serf__blncache_create(&new_sess->blncache,
                                       new_sess->pool));

  if (new_sess->server_allows_bulk)
    new_sess->server_allows_bulk = apr_pstrdup(result_pool,
                                               new_sess->server_allows_bulk);

  if (new_sess->repos_root_str)
    {
      new_sess->repos_root_str = apr_pstrdup(result_pool,
                                             new_sess->repos_root_str);
      SVN_ERR(svn_ra_serf__uri_parse(&new_sess->repos_root,
                                     new_sess->repos_root_str,
                                     result_pool));
    }

  new_sess->session_url_str = apr_pstrdup(result_pool, new_session_url);

  SVN_ERR(svn_ra_serf__uri_parse(&new_sess->session_url,
                                 new_sess->session_url_str,
                                 result_pool));
  new_sess->context = serf_context_create(result_pool);

  SVN_ERR(load_config(new_sess, old_sess->config,
                      result_pool, scratch_pool));

  new_sess->conns[0] = apr_pcalloc(result_pool,
                                   sizeof(*new_sess->conns[0]));
  new_sess->conns[0]->bkt_alloc =
          serf_bucket_allocator_create(result_pool, ((void*)0), ((void*)0));
  new_sess->conns[0]->session = new_sess;
  new_sess->conns[0]->last_status_code = -1;


  status =
    serf_connection_create2(&new_sess->conns[0]->conn,
                            new_sess->context,
                            new_sess->session_url,
                            svn_ra_serf__conn_setup, new_sess->conns[0],
                            svn_ra_serf__conn_closed, new_sess->conns[0],
                            result_pool);
  if (status)
    return svn_ra_serf__wrap_err(status, ((void*)0));


  serf_context_set_progress_cb(new_sess->context, svn_ra_serf__progress,
                               new_sess);

  new_sess->num_conns = 1;
  new_sess->cur_conn = 0;

  new_session->priv = new_sess;

  return SVN_NO_ERROR;
}
