
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {int src_abspath_or_url; int dst_abspath_or_url; } ;
typedef TYPE_2__ svn_client__copy_pair_t ;
struct handle_descendants_baton {TYPE_3__* committables; int check_url_baton; int check_url_func; int cancel_baton; int cancel_func; int wc_ctx; } ;
struct copy_committables_baton {TYPE_3__* committables; int check_url_baton; int check_url_func; TYPE_1__* ctx; int result_pool; } ;
typedef int apr_pool_t ;
struct TYPE_6__ {int by_repository; } ;
struct TYPE_4__ {int cancel_baton; int cancel_func; int wc_ctx; int notify_baton2; int notify_func2; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int handle_descendants ;
 int harvest_committables (int ,TYPE_3__*,int *,char const*,int ,int ,int *,int *,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int svn_depth_infinity ;
 int svn_dirent_is_absolute (int ) ;
 int svn_iter_apr_hash (int *,int ,int ,struct handle_descendants_baton*,int *) ;
 char* svn_uri_skip_ancestor (char const*,int ,int *) ;
 int svn_wc__node_get_repos_info (int *,int *,char const**,int *,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
harvest_copy_committables(void *baton, void *item, apr_pool_t *pool)
{
  struct copy_committables_baton *btn = baton;
  svn_client__copy_pair_t *pair = *(svn_client__copy_pair_t **)item;
  const char *repos_root_url;
  const char *commit_relpath;
  struct handle_descendants_baton hdb;


  SVN_ERR_ASSERT(svn_dirent_is_absolute(pair->src_abspath_or_url));

  SVN_ERR(svn_wc__node_get_repos_info(((void*)0), ((void*)0), &repos_root_url, ((void*)0),
                                      btn->ctx->wc_ctx,
                                      pair->src_abspath_or_url,
                                      pool, pool));

  commit_relpath = svn_uri_skip_ancestor(repos_root_url,
                                         pair->dst_abspath_or_url, pool);


  SVN_ERR(harvest_committables(pair->src_abspath_or_url,
                               btn->committables, ((void*)0),
                               commit_relpath,
                               svn_depth_infinity,
                               FALSE,
                               ((void*)0) ,
                               ((void*)0),
                               btn->check_url_func,
                               btn->check_url_baton,
                               btn->ctx->cancel_func,
                               btn->ctx->cancel_baton,
                               btn->ctx->notify_func2,
                               btn->ctx->notify_baton2,
                               btn->ctx->wc_ctx, btn->result_pool, pool));

  hdb.wc_ctx = btn->ctx->wc_ctx;
  hdb.cancel_func = btn->ctx->cancel_func;
  hdb.cancel_baton = btn->ctx->cancel_baton;
  hdb.check_url_func = btn->check_url_func;
  hdb.check_url_baton = btn->check_url_baton;
  hdb.committables = btn->committables;

  SVN_ERR(svn_iter_apr_hash(((void*)0), btn->committables->by_repository,
                            handle_descendants, &hdb, pool));

  return SVN_NO_ERROR;
}
