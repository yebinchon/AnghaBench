
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_ra_serf__connection_t ;
typedef int svn_error_t ;
struct TYPE_10__ {scalar_t__ num_active_propfinds; int target_rev; TYPE_5__* sess; scalar_t__ num_active_fetches; } ;
typedef TYPE_1__ report_context_t ;
struct TYPE_11__ {TYPE_3__* propfind_handler; int pool; int url; scalar_t__ fetch_props; TYPE_1__* ctx; } ;
typedef TYPE_2__ dir_baton_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {scalar_t__ num_conns; scalar_t__ max_connections; } ;
struct TYPE_12__ {TYPE_2__* done_delegate_baton; int done_delegate; int * conn; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 int all_props ;
 int dir_props_done ;
 int * get_best_connection (TYPE_1__*) ;
 int open_connection_if_needed (TYPE_5__*,scalar_t__) ;
 int set_dir_prop ;
 int svn_ra_serf__create_propfind_handler (TYPE_3__**,TYPE_5__*,int ,int ,char*,int ,int ,TYPE_2__*,int ) ;
 int svn_ra_serf__request_create (TYPE_3__*) ;

__attribute__((used)) static svn_error_t *
fetch_for_dir(dir_baton_t *dir,
              apr_pool_t *scratch)
{
  report_context_t *ctx = dir->ctx;
  svn_ra_serf__connection_t *conn;


  if (ctx->sess->num_conns < ctx->sess->max_connections)
    SVN_ERR(open_connection_if_needed(ctx->sess, ctx->num_active_fetches +
                                                 ctx->num_active_propfinds));


  conn = get_best_connection(ctx);


  if (dir->fetch_props)
    {
      SVN_ERR(svn_ra_serf__create_propfind_handler(&dir->propfind_handler,
                                                   ctx->sess, dir->url,
                                                   ctx->target_rev, "0",
                                                   all_props,
                                                   set_dir_prop, dir,
                                                   dir->pool));

      dir->propfind_handler->conn = conn;
      dir->propfind_handler->done_delegate = dir_props_done;
      dir->propfind_handler->done_delegate_baton = dir;


      svn_ra_serf__request_create(dir->propfind_handler);

      ctx->num_active_propfinds++;
    }
  else
    SVN_ERR_MALFUNCTION();

  return SVN_NO_ERROR;
}
