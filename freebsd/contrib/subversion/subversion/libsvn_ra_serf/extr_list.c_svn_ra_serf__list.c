
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_12__ {int * priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_ra_serf__xml_context_t ;
typedef int svn_ra_serf__session_t ;
struct TYPE_11__ {int code; } ;
struct TYPE_13__ {char* method; char const* path; char* body_type; TYPE_1__ sline; TYPE_4__* body_delegate_baton; int body_delegate; } ;
typedef TYPE_3__ svn_ra_serf__handler_t ;
typedef int svn_ra_dirent_receiver_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_14__ {char const* path; int author_buf; int props; int dirent_fields; int depth; int const* patterns; int revision; void* receiver_baton; int receiver; int * pool; } ;
typedef TYPE_4__ list_context_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 int create_list_body ;
 int item_closed ;
 int log_ttable ;
 int svn_ra_serf__context_run_one (TYPE_3__*,int *) ;
 TYPE_3__* svn_ra_serf__create_expat_handler (int *,int *,int *,int *) ;
 int svn_ra_serf__get_dirent_props (int ,int *,int *) ;
 int svn_ra_serf__get_stable_url (char const**,int *,int *,int *,int ,int *,int *) ;
 int svn_ra_serf__unexpected_status (TYPE_3__*) ;
 int * svn_ra_serf__xml_context_create (int ,int *,int ,int *,TYPE_4__*,int *) ;
 int svn_stringbuf_create_empty (int *) ;

svn_error_t *
svn_ra_serf__list(svn_ra_session_t *ra_session,
                  const char *path,
                  svn_revnum_t revision,
                  const apr_array_header_t *patterns,
                  svn_depth_t depth,
                  apr_uint32_t dirent_fields,
                  svn_ra_dirent_receiver_t receiver,
                  void *receiver_baton,
                  apr_pool_t *scratch_pool)
{
  list_context_t *list_ctx;
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  const char *req_url;

  list_ctx = apr_pcalloc(scratch_pool, sizeof(*list_ctx));
  list_ctx->pool = scratch_pool;
  list_ctx->receiver = receiver;
  list_ctx->receiver_baton = receiver_baton;
  list_ctx->path = path;
  list_ctx->revision = revision;
  list_ctx->patterns = patterns;
  list_ctx->depth = depth;
  list_ctx->dirent_fields = dirent_fields;
  list_ctx->props = svn_ra_serf__get_dirent_props(dirent_fields, session,
                                                  scratch_pool);
  list_ctx->author_buf = svn_stringbuf_create_empty(scratch_pool);




  SVN_ERR(svn_ra_serf__get_stable_url(&req_url, ((void*)0) ,
                                      session,
                                      ((void*)0) , revision,
                                      scratch_pool, scratch_pool));

  xmlctx = svn_ra_serf__xml_context_create(log_ttable,
                                           ((void*)0), item_closed, ((void*)0),
                                           list_ctx,
                                           scratch_pool);
  handler = svn_ra_serf__create_expat_handler(session, xmlctx, ((void*)0),
                                              scratch_pool);

  handler->method = "REPORT";
  handler->path = req_url;
  handler->body_delegate = create_list_body;
  handler->body_delegate_baton = list_ctx;
  handler->body_type = "text/xml";

  SVN_ERR(svn_ra_serf__context_run_one(handler, scratch_pool));

  if (handler->sline.code != 200)
    SVN_ERR(svn_ra_serf__unexpected_status(handler));

  return SVN_NO_ERROR;
}
