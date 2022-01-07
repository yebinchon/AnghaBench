
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int svn_ra_serf__xml_context_t ;
struct TYPE_19__ {int path; } ;
struct TYPE_21__ {int repos_root_str; TYPE_2__ session_url; TYPE_1__* wc_callbacks; } ;
typedef TYPE_4__ svn_ra_serf__session_t ;
struct TYPE_20__ {int code; } ;
struct TYPE_22__ {char* method; char* body_type; TYPE_3__ sline; TYPE_7__* header_delegate_baton; int header_delegate; TYPE_7__* body_delegate_baton; int body_delegate; int path; } ;
typedef TYPE_5__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
struct TYPE_23__ {int repos_root; int revision; } ;
typedef TYPE_6__ svn_commit_info_t ;
typedef int svn_boolean_t ;
struct TYPE_24__ {char const* merge_resource_url; int disable_merge_response; TYPE_6__* commit_info; TYPE_5__* handler; int merge_url; int keep_locks; int * lock_tokens; TYPE_4__* session; int * pool; } ;
typedef TYPE_7__ merge_context_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_18__ {int * push_wc_prop; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_DAV_PROPS_NOT_FOUND ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_RA_SERF__HAVE_HTTPV2_SUPPORT (TYPE_4__*) ;
 int _ (char*) ;
 TYPE_7__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,int ) ;
 int create_merge_body ;
 int merge_closed ;
 int merge_ttable ;
 int setup_merge_headers ;
 TYPE_6__* svn_create_commit_info (int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_ra_serf__context_run_one (TYPE_5__*,int *) ;
 TYPE_5__* svn_ra_serf__create_expat_handler (TYPE_4__*,int *,int *,int *) ;
 int svn_ra_serf__unexpected_status (TYPE_5__*) ;
 int * svn_ra_serf__xml_context_create (int ,int *,int ,int *,TYPE_7__*,int *) ;

svn_error_t *
svn_ra_serf__run_merge(const svn_commit_info_t **commit_info,
                       svn_ra_serf__session_t *session,
                       const char *merge_resource_url,
                       apr_hash_t *lock_tokens,
                       svn_boolean_t keep_locks,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  merge_context_t *merge_ctx;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;

  merge_ctx = apr_pcalloc(scratch_pool, sizeof(*merge_ctx));

  merge_ctx->pool = result_pool;
  merge_ctx->session = session;

  merge_ctx->merge_resource_url = merge_resource_url;

  merge_ctx->lock_tokens = lock_tokens;
  merge_ctx->keep_locks = keep_locks;




  merge_ctx->disable_merge_response =
    SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(session) ||
    session->wc_callbacks->push_wc_prop == ((void*)0);

  merge_ctx->commit_info = svn_create_commit_info(result_pool);

  merge_ctx->merge_url = session->session_url.path;

  xmlctx = svn_ra_serf__xml_context_create(merge_ttable,
                                           ((void*)0), merge_closed, ((void*)0),
                                           merge_ctx,
                                           scratch_pool);
  handler = svn_ra_serf__create_expat_handler(session, xmlctx, ((void*)0),
                                              scratch_pool);

  handler->method = "MERGE";
  handler->path = merge_ctx->merge_url;
  handler->body_delegate = create_merge_body;
  handler->body_delegate_baton = merge_ctx;
  handler->body_type = "text/xml";

  handler->header_delegate = setup_merge_headers;
  handler->header_delegate_baton = merge_ctx;

  merge_ctx->handler = handler;

  SVN_ERR(svn_ra_serf__context_run_one(handler, scratch_pool));

  if (handler->sline.code != 200)
    return svn_error_trace(svn_ra_serf__unexpected_status(handler));

  *commit_info = merge_ctx->commit_info;


  if (! SVN_IS_VALID_REVNUM(merge_ctx->commit_info->revision))
    {
      return svn_error_create(SVN_ERR_RA_DAV_PROPS_NOT_FOUND, ((void*)0),
                              _("The MERGE response did not include "
                                "a new revision"));
    }

  merge_ctx->commit_info->repos_root = apr_pstrdup(result_pool,
                                                   session->repos_root_str);

  return SVN_NO_ERROR;
}
