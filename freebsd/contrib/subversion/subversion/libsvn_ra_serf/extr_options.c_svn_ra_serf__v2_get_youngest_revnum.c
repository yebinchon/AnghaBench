
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_serf__session_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int youngest_rev; TYPE_3__* handler; } ;
typedef TYPE_2__ options_context_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int code; } ;
struct TYPE_8__ {TYPE_1__ sline; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_RA_SERF__HAVE_HTTPV2_SUPPORT (int *) ;
 int _ (char*) ;
 int create_options_req (TYPE_2__**,int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_ra_serf__context_run_one (TYPE_3__*,int *) ;
 int svn_ra_serf__unexpected_status (TYPE_3__*) ;

svn_error_t *
svn_ra_serf__v2_get_youngest_revnum(svn_revnum_t *youngest,
                                    svn_ra_serf__session_t *session,
                                    apr_pool_t *scratch_pool)
{
  options_context_t *opt_ctx;

  SVN_ERR_ASSERT(SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(session));

  SVN_ERR(create_options_req(&opt_ctx, session, scratch_pool));
  SVN_ERR(svn_ra_serf__context_run_one(opt_ctx->handler, scratch_pool));

  if (opt_ctx->handler->sline.code != 200)
    return svn_error_trace(svn_ra_serf__unexpected_status(opt_ctx->handler));

  if (! SVN_IS_VALID_REVNUM(opt_ctx->youngest_rev))
    return svn_error_create(SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED, ((void*)0),
                            _("The OPTIONS response did not include "
                              "the youngest revision"));

  *youngest = opt_ctx->youngest_rev;

  return SVN_NO_ERROR;
}
