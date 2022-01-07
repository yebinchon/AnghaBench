
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int response_baton; int response_handler; int xmlctx; int * pool; TYPE_3__* handler; int items; } ;
typedef TYPE_2__ svn_ra_serf__server_error_t ;
struct TYPE_8__ {int code; } ;
struct TYPE_10__ {int response_baton; int response_handler; TYPE_1__ sline; int session; } ;
typedef TYPE_3__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int expected_status ;
typedef int error_item_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int apr_array_make (int *,int,int) ;
 void* apr_pcalloc (int *,int) ;
 int multistatus_closed ;
 int multistatus_opened ;
 int multistatus_ttable ;
 TYPE_3__* svn_ra_serf__create_expat_handler (int ,int ,int*,int *) ;
 int svn_ra_serf__xml_context_create (int ,int ,int ,int *,TYPE_2__*,int *) ;

svn_error_t *
svn_ra_serf__setup_error_parsing(svn_ra_serf__server_error_t **server_err,
                                 svn_ra_serf__handler_t *handler,
                                 svn_boolean_t expect_207_only,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  svn_ra_serf__server_error_t *ms_baton;
  svn_ra_serf__handler_t *tmp_handler;

  int *expected_status = apr_pcalloc(result_pool,
                                     2 * sizeof(expected_status[0]));

  expected_status[0] = handler->sline.code;

  ms_baton = apr_pcalloc(result_pool, sizeof(*ms_baton));
  ms_baton->pool = result_pool;

  ms_baton->items = apr_array_make(result_pool, 4, sizeof(error_item_t *));
  ms_baton->handler = handler;

  ms_baton->xmlctx = svn_ra_serf__xml_context_create(multistatus_ttable,
                                                     multistatus_opened,
                                                     multistatus_closed,
                                                     ((void*)0),
                                                     ms_baton,
                                                     ms_baton->pool);

  tmp_handler = svn_ra_serf__create_expat_handler(handler->session,
                                                  ms_baton->xmlctx,
                                                  expected_status,
                                                  result_pool);


  tmp_handler->sline = handler->sline;
  ms_baton->response_handler = tmp_handler->response_handler;
  ms_baton->response_baton = tmp_handler->response_baton;

  *server_err = ms_baton;
  return SVN_NO_ERROR;
}
