
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef void* svn_mergeinfo_t ;
typedef void* svn_mergeinfo_catalog_t ;
typedef int svn_error_t ;
struct TYPE_23__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_24__ {scalar_t__ rev; int url; } ;
typedef TYPE_2__ svn_client__pathrev_t ;
struct TYPE_26__ {int rev; int url; int repos_uuid; int repos_root_url; } ;
struct TYPE_25__ {char const* abspath; TYPE_5__ loc; } ;
typedef TYPE_3__ merge_target_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CLIENT_NOT_READY_TO_MERGE ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 void* apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int assert (int ) ;
 int find_unmerged_mergeinfo (void**,scalar_t__*,scalar_t__,void*,int *,TYPE_2__ const*,TYPE_3__ const*,int *,int *,TYPE_1__*,int *,int *) ;
 int session_url_is (int *,int ,int *) ;
 int svn_client__elide_mergeinfo_catalog (void*,int *) ;
 int svn_client__get_history_as_mergeinfo (void**,int *,TYPE_2__*,int ,scalar_t__,int *,TYPE_1__*,int *) ;
 int svn_client__get_repos_mergeinfo_catalog (void**,int *,int ,scalar_t__,int ,int ,int ,int *,int *) ;
 int svn_client__get_youngest_common_ancestor (TYPE_2__**,TYPE_2__ const*,TYPE_5__*,int *,TYPE_1__*,int *,int *) ;
 TYPE_2__* svn_client__pathrev_create_with_relpath (int ,int ,int ,char const*,int *) ;
 TYPE_2__* svn_client__pathrev_dup (TYPE_2__*,int *) ;
 int svn_client__repos_location (TYPE_2__**,int *,TYPE_5__*,scalar_t__,TYPE_1__*,int *,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,scalar_t__,int ,int ) ;
 int svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,void*) ;
 void* svn_mergeinfo_catalog_dup (void*,int *) ;
 int svn_mergeinfo_inherited ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_wc__node_get_repos_info (int *,char const**,int *,int *,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
calculate_left_hand_side(svn_client__pathrev_t **left_p,
                         svn_mergeinfo_catalog_t *merged_to_source_catalog,
                         svn_mergeinfo_catalog_t *unmerged_to_source_catalog,
                         const merge_target_t *target,
                         apr_hash_t *subtrees_with_mergeinfo,
                         const svn_client__pathrev_t *source_loc,
                         svn_ra_session_t *source_ra_session,
                         svn_ra_session_t *target_ra_session,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_mergeinfo_catalog_t mergeinfo_catalog, unmerged_catalog;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  apr_hash_index_t *hi;

  apr_hash_t *target_history_hash = apr_hash_make(scratch_pool);
  svn_revnum_t youngest_merged_rev;
  svn_client__pathrev_t *yc_ancestor;

  assert(session_url_is(source_ra_session, source_loc->url, scratch_pool));
  assert(session_url_is(target_ra_session, target->loc.url, scratch_pool));


  *left_p = ((void*)0);





  if (!svn_hash_gets(subtrees_with_mergeinfo, target->abspath))
    svn_hash_sets(subtrees_with_mergeinfo, target->abspath,
                  apr_hash_make(result_pool));



  for (hi = apr_hash_first(scratch_pool, subtrees_with_mergeinfo);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *local_abspath = apr_hash_this_key(hi);
      svn_client__pathrev_t *target_child;
      const char *repos_relpath;
      svn_mergeinfo_t target_history_as_mergeinfo;

      svn_pool_clear(iterpool);



      SVN_ERR(svn_wc__node_get_repos_info(((void*)0), &repos_relpath, ((void*)0), ((void*)0),
                                          ctx->wc_ctx, local_abspath,
                                          scratch_pool, iterpool));
      target_child = svn_client__pathrev_create_with_relpath(
                       target->loc.repos_root_url, target->loc.repos_uuid,
                       target->loc.rev, repos_relpath, iterpool);
      SVN_ERR(svn_client__get_history_as_mergeinfo(&target_history_as_mergeinfo,
                                                   ((void*)0) ,
                                                   target_child,
                                                   target->loc.rev,
                                                   SVN_INVALID_REVNUM,
                                                   target_ra_session,
                                                   ctx, scratch_pool));

      svn_hash_sets(target_history_hash, repos_relpath,
                    target_history_as_mergeinfo);
    }




  SVN_ERR(svn_client__get_youngest_common_ancestor(
              &yc_ancestor, source_loc, &target->loc, target_ra_session, ctx,
              iterpool, iterpool));
  if (! yc_ancestor)
    return svn_error_createf(SVN_ERR_CLIENT_NOT_READY_TO_MERGE, ((void*)0),
                             _("'%s@%ld' must be ancestrally related to "
                               "'%s@%ld'"), source_loc->url, source_loc->rev,
                             target->loc.url, target->loc.rev);




  if (source_loc->rev == yc_ancestor->rev)
    {
      svn_pool_destroy(iterpool);
      return SVN_NO_ERROR;
    }



  SVN_ERR(svn_client__get_repos_mergeinfo_catalog(
            &mergeinfo_catalog, source_ra_session,
            source_loc->url, source_loc->rev,
            svn_mergeinfo_inherited, FALSE ,
            TRUE , iterpool, iterpool));

  if (!mergeinfo_catalog)
    mergeinfo_catalog = apr_hash_make(iterpool);

  *merged_to_source_catalog = svn_mergeinfo_catalog_dup(mergeinfo_catalog,
                                                        result_pool);




  SVN_ERR(find_unmerged_mergeinfo(&unmerged_catalog,
                                  &youngest_merged_rev,
                                  yc_ancestor->rev,
                                  mergeinfo_catalog,
                                  target_history_hash,
                                  source_loc,
                                  target,
                                  source_ra_session,
                                  target_ra_session,
                                  ctx,
                                  iterpool, iterpool));


  SVN_ERR(svn_client__elide_mergeinfo_catalog(unmerged_catalog,
                                              iterpool));
  *unmerged_to_source_catalog = svn_mergeinfo_catalog_dup(unmerged_catalog,
                                                          result_pool);

  if (youngest_merged_rev == SVN_INVALID_REVNUM)
    {

      *left_p = svn_client__pathrev_dup(yc_ancestor, result_pool);
    }
  else
    {



      SVN_ERR(svn_client__repos_location(left_p, target_ra_session,
                                         &target->loc, youngest_merged_rev,
                                         ctx, result_pool, iterpool));
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
