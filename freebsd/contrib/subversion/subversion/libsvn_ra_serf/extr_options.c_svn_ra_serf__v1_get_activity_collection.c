
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * pool; void* activity_collection_url; } ;
typedef TYPE_2__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
struct TYPE_12__ {void* activity_collection; TYPE_5__* handler; } ;
typedef TYPE_3__ options_context_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {int code; } ;
struct TYPE_13__ {TYPE_1__ sline; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED ;
 int * SVN_NO_ERROR ;
 int SVN_RA_SERF__HAVE_HTTPV2_SUPPORT (TYPE_2__*) ;
 int _ (char*) ;
 void* apr_pstrdup (int *,void*) ;
 int create_options_req (TYPE_3__**,TYPE_2__*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_ra_serf__context_run_one (TYPE_5__*,int *) ;
 int svn_ra_serf__unexpected_status (TYPE_5__*) ;

svn_error_t *
svn_ra_serf__v1_get_activity_collection(const char **activity_url,
                                        svn_ra_serf__session_t *session,
                                        apr_pool_t *result_pool,
                                        apr_pool_t *scratch_pool)
{
  options_context_t *opt_ctx;

  SVN_ERR_ASSERT(!SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(session));

  if (session->activity_collection_url)
    {
      *activity_url = apr_pstrdup(result_pool,
                                  session->activity_collection_url);
      return SVN_NO_ERROR;
    }

  SVN_ERR(create_options_req(&opt_ctx, session, scratch_pool));
  SVN_ERR(svn_ra_serf__context_run_one(opt_ctx->handler, scratch_pool));

  if (opt_ctx->handler->sline.code != 200)
    return svn_error_trace(svn_ra_serf__unexpected_status(opt_ctx->handler));


  if (opt_ctx->activity_collection)
    {
      session->activity_collection_url =
                    apr_pstrdup(session->pool, opt_ctx->activity_collection);
    }
  else
    {
      return svn_error_create(SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED, ((void*)0),
                              _("The OPTIONS response did not include the "
                                "requested activity-collection-set value"));
    }

  *activity_url = apr_pstrdup(result_pool, opt_ctx->activity_collection);

  return SVN_NO_ERROR;

}
