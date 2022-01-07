
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_28__ {TYPE_4__* priv; } ;
typedef TYPE_3__ svn_ra_session_t ;
typedef int svn_ra_serf__xml_context_t ;
struct TYPE_26__ {int path; } ;
struct TYPE_29__ {TYPE_1__ session_url; } ;
typedef TYPE_4__ svn_ra_serf__session_t ;
struct TYPE_27__ {int code; } ;
struct TYPE_30__ {char* method; char const* path; char* body_type; TYPE_2__ sline; TYPE_7__* body_delegate_baton; int body_delegate; } ;
typedef TYPE_5__ svn_ra_serf__handler_t ;
struct TYPE_31__ {scalar_t__ apr_err; } ;
typedef TYPE_6__ svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_32__ {int * hash; int requested_depth; int path; int * pool; } ;
typedef TYPE_7__ lock_context_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 int SVN_ERR_RA_NOT_IMPLEMENTED ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 TYPE_6__* SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int * apr_hash_make (int *) ;
 TYPE_7__* apr_pcalloc (int *,int) ;
 int apr_pstrcat (int *,char*,char const*,int ) ;
 int create_getlocks_body ;
 int getlocks_closed ;
 int getlocks_ttable ;
 int svn_error_clear (TYPE_6__*) ;
 TYPE_6__* svn_error_create (int ,TYPE_6__*,int *) ;
 scalar_t__ svn_error_find_cause (TYPE_6__*,int ) ;
 TYPE_6__* svn_error_trace (TYPE_6__*) ;
 char* svn_path_url_add_component2 (int ,char const*,int *) ;
 TYPE_6__* svn_ra_serf__context_run_one (TYPE_5__*,int *) ;
 TYPE_5__* svn_ra_serf__create_expat_handler (TYPE_4__*,int *,int *,int *) ;
 int svn_ra_serf__get_relative_path (char const**,char const*,TYPE_4__*,int *) ;
 TYPE_6__* svn_ra_serf__unexpected_status (TYPE_5__*) ;
 int * svn_ra_serf__xml_context_create (int ,int *,int ,int *,TYPE_7__*,int *) ;

svn_error_t *
svn_ra_serf__get_locks(svn_ra_session_t *ra_session,
                       apr_hash_t **locks,
                       const char *path,
                       svn_depth_t depth,
                       apr_pool_t *pool)
{
  lock_context_t *lock_ctx;
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  const char *req_url, *rel_path;
  svn_error_t *err;

  req_url = svn_path_url_add_component2(session->session_url.path, path, pool);
  SVN_ERR(svn_ra_serf__get_relative_path(&rel_path, req_url, session, pool));

  lock_ctx = apr_pcalloc(pool, sizeof(*lock_ctx));
  lock_ctx->pool = pool;
  lock_ctx->path = apr_pstrcat(pool, "/", rel_path, SVN_VA_NULL);
  lock_ctx->requested_depth = depth;
  lock_ctx->hash = apr_hash_make(pool);

  xmlctx = svn_ra_serf__xml_context_create(getlocks_ttable,
                                           ((void*)0), getlocks_closed, ((void*)0),
                                           lock_ctx,
                                           pool);
  handler = svn_ra_serf__create_expat_handler(session, xmlctx, ((void*)0), pool);

  handler->method = "REPORT";
  handler->path = req_url;
  handler->body_type = "text/xml";

  handler->body_delegate = create_getlocks_body;
  handler->body_delegate_baton = lock_ctx;

  err = svn_ra_serf__context_run_one(handler, pool);

  if (err)
    {
      if (svn_error_find_cause(err, SVN_ERR_UNSUPPORTED_FEATURE))
        {



          return svn_error_create(SVN_ERR_RA_NOT_IMPLEMENTED, err, ((void*)0));
        }
      else if (err->apr_err == SVN_ERR_FS_NOT_FOUND)
        {

          svn_error_clear(err);
        }
      else
        return svn_error_trace(err);
    }



  if (handler->sline.code != 200
      && handler->sline.code != 404)
    {
      return svn_error_trace(svn_ra_serf__unexpected_status(handler));
    }

  *locks = lock_ctx->hash;

  return SVN_NO_ERROR;
}
