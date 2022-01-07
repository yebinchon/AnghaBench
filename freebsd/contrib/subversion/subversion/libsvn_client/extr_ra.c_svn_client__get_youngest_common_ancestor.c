
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_9__ {int url; int repos_root_url; } ;
typedef TYPE_1__ svn_client__pathrev_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 scalar_t__ strcmp (int ,int ) ;
 int svn_client__calc_youngest_common_ancestor (TYPE_1__**,TYPE_1__ const*,int *,int ,TYPE_1__ const*,int *,int ,int *,int *) ;
 int svn_client__get_history_as_mergeinfo (int **,int *,TYPE_1__ const*,int ,int ,int *,int *,int *) ;
 int svn_client_open_ra_session2 (int **,int ,int *,int *,int *,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_client__get_youngest_common_ancestor(svn_client__pathrev_t **ancestor_p,
                                         const svn_client__pathrev_t *loc1,
                                         const svn_client__pathrev_t *loc2,
                                         svn_ra_session_t *session,
                                         svn_client_ctx_t *ctx,
                                         apr_pool_t *result_pool,
                                         apr_pool_t *scratch_pool)
{
  apr_pool_t *sesspool = ((void*)0);
  apr_hash_t *history1, *history2;
  svn_boolean_t has_rev_zero_history1;
  svn_boolean_t has_rev_zero_history2;

  if (strcmp(loc1->repos_root_url, loc2->repos_root_url) != 0)
    {
      *ancestor_p = ((void*)0);
      return SVN_NO_ERROR;
    }


  if (session == ((void*)0))
    {
      sesspool = svn_pool_create(scratch_pool);
      SVN_ERR(svn_client_open_ra_session2(&session, loc1->url, ((void*)0), ctx,
                                          sesspool, sesspool));
    }



  SVN_ERR(svn_client__get_history_as_mergeinfo(&history1,
                                               &has_rev_zero_history1,
                                               loc1,
                                               SVN_INVALID_REVNUM,
                                               SVN_INVALID_REVNUM,
                                               session, ctx, scratch_pool));
  SVN_ERR(svn_client__get_history_as_mergeinfo(&history2,
                                               &has_rev_zero_history2,
                                               loc2,
                                               SVN_INVALID_REVNUM,
                                               SVN_INVALID_REVNUM,
                                               session, ctx, scratch_pool));

  if (sesspool)
    svn_pool_destroy(sesspool);

  SVN_ERR(svn_client__calc_youngest_common_ancestor(ancestor_p,
                                                    loc1, history1,
                                                    has_rev_zero_history1,
                                                    loc2, history2,
                                                    has_rev_zero_history2,
                                                    result_pool,
                                                    scratch_pool));

  return SVN_NO_ERROR;
}
