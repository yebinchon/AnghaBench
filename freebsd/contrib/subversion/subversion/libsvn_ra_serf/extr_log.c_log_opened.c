
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_ra_serf__dav_props_t ;
typedef int svn_error_t ;
struct TYPE_2__ {void* collect_paths; void* collect_revprops; } ;
typedef TYPE_1__ log_context_t ;
typedef int apr_pool_t ;


 int ITEM ;
 int * SVN_NO_ERROR ;
 void* apr_hash_make (int *) ;
 int * svn_ra_serf__xml_state_pool (int *) ;

__attribute__((used)) static svn_error_t *
log_opened(svn_ra_serf__xml_estate_t *xes,
           void *baton,
           int entered_state,
           const svn_ra_serf__dav_props_t *tag,
           apr_pool_t *scratch_pool)
{
  log_context_t *log_ctx = baton;

  if (entered_state == ITEM)
    {
      apr_pool_t *state_pool = svn_ra_serf__xml_state_pool(xes);

      log_ctx->collect_revprops = apr_hash_make(state_pool);
      log_ctx->collect_paths = apr_hash_make(state_pool);
    }

  return SVN_NO_ERROR;
}
