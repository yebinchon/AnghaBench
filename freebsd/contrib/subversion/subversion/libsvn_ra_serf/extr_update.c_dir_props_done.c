
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int code; } ;
struct TYPE_10__ {TYPE_1__ sline; scalar_t__ server_error; } ;
typedef TYPE_3__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
typedef int serf_request_t ;
struct TYPE_11__ {TYPE_2__* ctx; TYPE_3__* propfind_handler; } ;
typedef TYPE_4__ dir_baton_t ;
typedef int apr_pool_t ;
struct TYPE_9__ {int num_active_propfinds; } ;


 int maybe_close_dir (TYPE_4__*) ;
 int * svn_error_trace (int ) ;
 int * svn_ra_serf__server_error_create (TYPE_3__*,int *) ;
 int svn_ra_serf__unexpected_status (TYPE_3__*) ;

__attribute__((used)) static svn_error_t *
dir_props_done(serf_request_t *request,
               void *baton,
               apr_pool_t *scratch_pool)
{
  dir_baton_t *dir = baton;
  svn_ra_serf__handler_t *handler = dir->propfind_handler;

  if (handler->server_error)
    return svn_ra_serf__server_error_create(handler, scratch_pool);

  if (handler->sline.code != 207)
    return svn_error_trace(svn_ra_serf__unexpected_status(handler));

  dir->ctx->num_active_propfinds--;







  return svn_error_trace(maybe_close_dir(dir));
}
