
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_19__ {TYPE_3__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_ra_serf__xml_context_t ;
struct TYPE_20__ {int repos_root_str; int session_url_str; } ;
typedef TYPE_3__ svn_ra_serf__session_t ;
struct TYPE_18__ {int code; } ;
struct TYPE_21__ {char* method; char const* path; char* body_type; TYPE_1__ sline; TYPE_5__* body_delegate_baton; int body_delegate; } ;
typedef TYPE_4__ svn_ra_serf__handler_t ;
typedef int svn_prop_inherited_item_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_22__ {char const* path; int * iprops; int revision; int * curr_iprop; int curr_propname; int * pool; int repos_root_url; } ;
typedef TYPE_5__ iprops_context_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_RA_CAPABILITY_INHERITED_PROPS ;
 int * apr_array_make (int *,int,int) ;
 TYPE_5__* apr_pcalloc (int *,int) ;
 char* apr_pstrdup (int *,int ) ;
 int create_iprops_body ;
 int * get_iprops_via_more_requests (TYPE_2__*,int **,char const*,char const*,int ,int *,int *) ;
 int iprops_closed ;
 int iprops_opened ;
 int iprops_table ;
 scalar_t__ strcmp (char const*,int ) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int *) ;
 int svn_ra_serf__context_run_one (TYPE_4__*,int *) ;
 TYPE_4__* svn_ra_serf__create_expat_handler (TYPE_3__*,int *,int *,int *) ;
 int svn_ra_serf__get_repos_root (TYPE_2__*,char const**,int *) ;
 int svn_ra_serf__get_stable_url (char const**,int *,TYPE_3__*,int *,int ,int *,int *) ;
 int svn_ra_serf__has_capability (TYPE_2__*,int *,int ,int *) ;
 int svn_ra_serf__reparent (TYPE_2__*,char const*,int *) ;
 int * svn_ra_serf__unexpected_status (TYPE_4__*) ;
 int * svn_ra_serf__xml_context_create (int ,int ,int ,int *,TYPE_5__*,int *) ;
 int svn_stringbuf_create_empty (int *) ;

svn_error_t *
svn_ra_serf__get_inherited_props(svn_ra_session_t *ra_session,
                                 apr_array_header_t **iprops,
                                 const char *path,
                                 svn_revnum_t revision,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  iprops_context_t *iprops_ctx;
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  const char *req_url;
  svn_boolean_t iprop_capable;

  SVN_ERR(svn_ra_serf__has_capability(ra_session, &iprop_capable,
                                      SVN_RA_CAPABILITY_INHERITED_PROPS,
                                      scratch_pool));

  if (!iprop_capable)
    {
      svn_error_t *err;
      const char *reparent_uri = ((void*)0);
      const char *session_uri;
      const char *repos_root_url;

      SVN_ERR(svn_ra_serf__get_repos_root(ra_session, &repos_root_url,
                                          scratch_pool));

      session_uri = apr_pstrdup(scratch_pool, session->session_url_str);
      if (strcmp(repos_root_url, session->session_url_str) != 0)
        {
          reparent_uri = session_uri;
          SVN_ERR(svn_ra_serf__reparent(ra_session, repos_root_url,
                                        scratch_pool));
        }

      err = get_iprops_via_more_requests(ra_session, iprops, session_uri, path,
                                         revision, result_pool, scratch_pool);

      if (reparent_uri)
        err = svn_error_compose_create(err,
                                       svn_ra_serf__reparent(ra_session,
                                                             reparent_uri ,
                                                             scratch_pool));

      return svn_error_trace(err);
    }

  SVN_ERR(svn_ra_serf__get_stable_url(&req_url,
                                      ((void*)0) ,
                                      session,
                                      ((void*)0) ,
                                      revision,
                                      scratch_pool, scratch_pool));

  SVN_ERR_ASSERT(session->repos_root_str);

  iprops_ctx = apr_pcalloc(scratch_pool, sizeof(*iprops_ctx));
  iprops_ctx->repos_root_url = session->repos_root_str;
  iprops_ctx->pool = result_pool;
  iprops_ctx->curr_propname = svn_stringbuf_create_empty(scratch_pool);
  iprops_ctx->curr_iprop = ((void*)0);
  iprops_ctx->iprops = apr_array_make(result_pool, 1,
                                       sizeof(svn_prop_inherited_item_t *));
  iprops_ctx->path = path;
  iprops_ctx->revision = revision;

  xmlctx = svn_ra_serf__xml_context_create(iprops_table,
                                           iprops_opened, iprops_closed,
                                           ((void*)0),
                                           iprops_ctx,
                                           scratch_pool);
  handler = svn_ra_serf__create_expat_handler(session, xmlctx, ((void*)0),
                                              scratch_pool);

  handler->method = "REPORT";
  handler->path = req_url;

  handler->body_delegate = create_iprops_body;
  handler->body_delegate_baton = iprops_ctx;
  handler->body_type = "text/xml";

  SVN_ERR(svn_ra_serf__context_run_one(handler, scratch_pool));

  if (handler->sline.code != 200)
    return svn_error_trace(svn_ra_serf__unexpected_status(handler));

  *iprops = iprops_ctx->iprops;

  return SVN_NO_ERROR;
}
