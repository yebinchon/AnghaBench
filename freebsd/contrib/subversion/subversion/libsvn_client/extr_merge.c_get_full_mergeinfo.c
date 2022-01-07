
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_mergeinfo_inheritance_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_4__ {scalar_t__ rev; } ;
typedef TYPE_1__ svn_client__pathrev_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int apr_hash_make (int *) ;
 int svn_client__get_history_as_mergeinfo (int *,int *,TYPE_1__*,scalar_t__,scalar_t__,int *,int *,int *) ;
 int svn_client__get_wc_or_repos_mergeinfo (int *,int *,int *,int ,int ,int *,char const*,int *,int *) ;
 int svn_client__wc_node_get_origin (TYPE_1__**,char const*,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_full_mergeinfo(svn_mergeinfo_t *recorded_mergeinfo,
                   svn_mergeinfo_t *implicit_mergeinfo,
                   svn_boolean_t *inherited,
                   svn_mergeinfo_inheritance_t inherit,
                   svn_ra_session_t *ra_session,
                   const char *target_abspath,
                   svn_revnum_t start,
                   svn_revnum_t end,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{

  if (recorded_mergeinfo)
    {
      SVN_ERR(svn_client__get_wc_or_repos_mergeinfo(recorded_mergeinfo,
                                                    inherited,
                                                    ((void*)0) ,
                                                    FALSE,
                                                    inherit, ra_session,
                                                    target_abspath,
                                                    ctx, result_pool));
    }

  if (implicit_mergeinfo)
    {
      svn_client__pathrev_t *target;


      SVN_ERR_ASSERT(SVN_IS_VALID_REVNUM(start) && SVN_IS_VALID_REVNUM(end)
                     && (start > end));



      SVN_ERR(svn_client__wc_node_get_origin(&target, target_abspath, ctx,
                                             scratch_pool, scratch_pool));

      if (! target)
        {


          *implicit_mergeinfo = apr_hash_make(result_pool);
        }
      else if (target->rev <= end)
        {


          *implicit_mergeinfo = apr_hash_make(result_pool);
        }
      else
        {







          if (target->rev < start)
            start = target->rev;


          SVN_ERR(svn_client__get_history_as_mergeinfo(implicit_mergeinfo,
                                                       ((void*)0),
                                                       target, start, end,
                                                       ra_session, ctx,
                                                       result_pool));
        }
    }

  return SVN_NO_ERROR;
}
