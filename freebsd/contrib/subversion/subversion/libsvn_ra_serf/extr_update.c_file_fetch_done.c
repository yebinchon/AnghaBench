
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int code; } ;
struct TYPE_13__ {TYPE_3__ sline; scalar_t__ server_error; } ;
typedef TYPE_4__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
typedef int serf_request_t ;
struct TYPE_14__ {scalar_t__ fetch_props; int fetch_file; TYPE_2__* parent_dir; } ;
typedef TYPE_5__ file_baton_t ;
struct TYPE_15__ {TYPE_4__* handler; TYPE_5__* file; } ;
typedef TYPE_6__ fetch_ctx_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {TYPE_1__* ctx; } ;
struct TYPE_10__ {int num_active_fetches; } ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 int close_file (TYPE_5__*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_ra_serf__server_error_create (TYPE_4__*,int *) ;
 int svn_ra_serf__unexpected_status (TYPE_4__*) ;

__attribute__((used)) static svn_error_t *
file_fetch_done(serf_request_t *request,
                void *baton,
                apr_pool_t *scratch_pool)
{
  fetch_ctx_t *fetch_ctx = baton;
  file_baton_t *file = fetch_ctx->file;
  svn_ra_serf__handler_t *handler = fetch_ctx->handler;

  if (handler->server_error)
      return svn_error_trace(svn_ra_serf__server_error_create(handler,
                                                              scratch_pool));

  if (handler->sline.code != 200)
    return svn_error_trace(svn_ra_serf__unexpected_status(handler));

  file->parent_dir->ctx->num_active_fetches--;

  file->fetch_file = FALSE;

  if (file->fetch_props)
    return SVN_NO_ERROR;







  return svn_error_trace(close_file(file, scratch_pool));
}
