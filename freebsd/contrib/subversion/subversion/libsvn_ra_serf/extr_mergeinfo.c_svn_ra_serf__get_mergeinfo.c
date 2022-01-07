
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
typedef int svn_mergeinfo_inheritance_t ;
typedef int * svn_mergeinfo_catalog_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_14__ {int * result_catalog; int include_descendants; int inherit; int revision; int const* paths; int * pool; } ;
typedef TYPE_4__ mergeinfo_context_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_make (int *) ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 int create_mergeinfo_body ;
 int mergeinfo_closed ;
 int mergeinfo_ttable ;
 int svn_ra_serf__context_run_one (TYPE_3__*,int *) ;
 TYPE_3__* svn_ra_serf__create_expat_handler (int *,int *,int *,int *) ;
 int svn_ra_serf__get_stable_url (char const**,int *,int *,int *,int ,int *,int *) ;
 int svn_ra_serf__unexpected_status (TYPE_3__*) ;
 int * svn_ra_serf__xml_context_create (int ,int *,int ,int *,TYPE_4__*,int *) ;

svn_error_t *
svn_ra_serf__get_mergeinfo(svn_ra_session_t *ra_session,
                           svn_mergeinfo_catalog_t *catalog,
                           const apr_array_header_t *paths,
                           svn_revnum_t revision,
                           svn_mergeinfo_inheritance_t inherit,
                           svn_boolean_t include_descendants,
                           apr_pool_t *pool)
{
  mergeinfo_context_t *mergeinfo_ctx;
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  const char *path;

  *catalog = ((void*)0);

  SVN_ERR(svn_ra_serf__get_stable_url(&path, ((void*)0) ,
                                      session,
                                      ((void*)0) , revision,
                                      pool, pool));

  mergeinfo_ctx = apr_pcalloc(pool, sizeof(*mergeinfo_ctx));
  mergeinfo_ctx->pool = pool;
  mergeinfo_ctx->result_catalog = apr_hash_make(pool);
  mergeinfo_ctx->paths = paths;
  mergeinfo_ctx->revision = revision;
  mergeinfo_ctx->inherit = inherit;
  mergeinfo_ctx->include_descendants = include_descendants;

  xmlctx = svn_ra_serf__xml_context_create(mergeinfo_ttable,
                                           ((void*)0), mergeinfo_closed, ((void*)0),
                                           mergeinfo_ctx,
                                           pool);
  handler = svn_ra_serf__create_expat_handler(session, xmlctx, ((void*)0), pool);

  handler->method = "REPORT";
  handler->path = path;

  handler->body_delegate = create_mergeinfo_body;
  handler->body_delegate_baton = mergeinfo_ctx;
  handler->body_type = "text/xml";

  SVN_ERR(svn_ra_serf__context_run_one(handler, pool));

  if (handler->sline.code != 200)
    SVN_ERR(svn_ra_serf__unexpected_status(handler));

  if (apr_hash_count(mergeinfo_ctx->result_catalog))
    *catalog = mergeinfo_ctx->result_catalog;

  return SVN_NO_ERROR;
}
