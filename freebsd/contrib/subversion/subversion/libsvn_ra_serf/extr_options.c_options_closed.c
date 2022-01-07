
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int pool; int activity_collection; } ;
typedef TYPE_2__ options_context_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int HREF ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int svn_urlpath__canonicalize (int ,int ) ;

__attribute__((used)) static svn_error_t *
options_closed(svn_ra_serf__xml_estate_t *xes,
               void *baton,
               int leaving_state,
               const svn_string_t *cdata,
               apr_hash_t *attrs,
               apr_pool_t *scratch_pool)
{
  options_context_t *opt_ctx = baton;

  SVN_ERR_ASSERT(leaving_state == HREF);
  SVN_ERR_ASSERT(cdata != ((void*)0));

  opt_ctx->activity_collection = svn_urlpath__canonicalize(cdata->data,
                                                           opt_ctx->pool);

  return SVN_NO_ERROR;
}
