
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_ra_serf__dav_props_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int pool; TYPE_2__* curr_iprop; int curr_propname; } ;
typedef TYPE_1__ iprops_context_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int prop_hash; } ;


 int IPROPS_ITEM ;
 int * SVN_NO_ERROR ;
 int apr_hash_make (int ) ;
 TYPE_2__* apr_pcalloc (int ,int) ;
 int svn_stringbuf_setempty (int ) ;

__attribute__((used)) static svn_error_t *
iprops_opened(svn_ra_serf__xml_estate_t *xes,
              void *baton,
              int entered_state,
              const svn_ra_serf__dav_props_t *tag,
              apr_pool_t *scratch_pool)
{
  iprops_context_t *iprops_ctx = baton;

  if (entered_state == IPROPS_ITEM)
    {
      svn_stringbuf_setempty(iprops_ctx->curr_propname);

      iprops_ctx->curr_iprop = apr_pcalloc(iprops_ctx->pool,
                                           sizeof(*iprops_ctx->curr_iprop));

      iprops_ctx->curr_iprop->prop_hash = apr_hash_make(iprops_ctx->pool);
    }
  return SVN_NO_ERROR;
}
