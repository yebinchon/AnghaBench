
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int * svn_mergeinfo_t ;
typedef int * svn_mergeinfo_catalog_t ;
struct TYPE_18__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_19__ {int rev; int url; } ;
typedef TYPE_2__ svn_client__pathrev_t ;
struct TYPE_20__ {TYPE_2__ const loc; } ;
typedef TYPE_3__ merge_target_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 scalar_t__ SVN_ERR_RA_DAV_REQUEST_FAILED ;
 int SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 TYPE_1__* SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 void* apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * apr_hash_this_val (int *) ;
 char const* apr_pstrdup (int *,char const*) ;
 int assert (int ) ;
 int find_unmerged_mergeinfo_subroutine (int **,int *,int *,TYPE_2__*,int *,int *,int *,int *) ;
 int find_youngest_merged_rev (int *,int *,int *,int *) ;
 int session_url_is (int *,int ,int *) ;
 TYPE_1__* svn_client__get_history_as_mergeinfo (int **,int *,TYPE_2__*,int ,int ,int *,int *,int *) ;
 int svn_client__get_repos_mergeinfo (int **,int *,int ,int ,int ,int ,int *) ;
 int svn_client__pathrev_create_with_session (TYPE_2__**,int *,int ,char const*,int *) ;
 TYPE_2__* svn_client__pathrev_join_relpath (TYPE_2__ const*,char const*,int *) ;
 char* svn_client__pathrev_relpath (TYPE_2__ const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int * svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,int *) ;
 int svn_mergeinfo__filter_catalog_by_ranges (int **,int *,int ,int ,int ,int *,int *) ;
 int svn_mergeinfo__filter_mergeinfo_by_ranges (int **,int *,int ,int ,int ,int *,int *) ;
 int * svn_mergeinfo_catalog_dup (int *,int *) ;
 int svn_mergeinfo_inherited ;
 scalar_t__ svn_node_none ;
 char* svn_path_url_add_component2 (int ,char const*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_check_path (int *,char const*,int ,scalar_t__*,int *) ;
 char* svn_relpath_join (char const*,char const*,int *) ;
 char* svn_relpath_skip_ancestor (char const*,char const*) ;

__attribute__((used)) static svn_error_t *
find_unmerged_mergeinfo(svn_mergeinfo_catalog_t *unmerged_to_source_catalog,
                        svn_revnum_t *youngest_merged_rev,
                        svn_revnum_t yc_ancestor_rev,
                        svn_mergeinfo_catalog_t source_catalog,
                        apr_hash_t *target_history_hash,
                        const svn_client__pathrev_t *source_loc,
                        const merge_target_t *target,
                        svn_ra_session_t *source_ra_session,
                        svn_ra_session_t *target_ra_session,
                        svn_client_ctx_t *ctx,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *source_repos_rel_path
    = svn_client__pathrev_relpath(source_loc, scratch_pool);
  const char *target_repos_rel_path
    = svn_client__pathrev_relpath(&target->loc, scratch_pool);
  apr_hash_index_t *hi;
  svn_mergeinfo_catalog_t new_catalog = apr_hash_make(result_pool);
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  assert(session_url_is(source_ra_session, source_loc->url, scratch_pool));
  assert(session_url_is(target_ra_session, target->loc.url, scratch_pool));

  *youngest_merged_rev = SVN_INVALID_REVNUM;



  for (hi = apr_hash_first(scratch_pool, target_history_hash);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *target_path = apr_hash_this_key(hi);
      svn_mergeinfo_t target_history_as_mergeinfo = apr_hash_this_val(hi);
      const char *path_rel_to_session
        = svn_relpath_skip_ancestor(target_repos_rel_path, target_path);
      const char *source_path;
      svn_client__pathrev_t *source_pathrev;
      svn_mergeinfo_t source_mergeinfo, filtered_mergeinfo;

      svn_pool_clear(iterpool);

      source_path = svn_relpath_join(source_repos_rel_path,
                                     path_rel_to_session, iterpool);
      source_pathrev = svn_client__pathrev_join_relpath(
                         source_loc, path_rel_to_session, iterpool);







      SVN_ERR(svn_mergeinfo__filter_mergeinfo_by_ranges(
        &target_history_as_mergeinfo, target_history_as_mergeinfo,
        source_loc->rev, yc_ancestor_rev, TRUE, iterpool, iterpool));







      source_mergeinfo = svn_hash_gets(source_catalog, source_path);
      if (source_mergeinfo)
        {
          svn_hash_sets(source_catalog, source_path, ((void*)0));

          SVN_ERR(find_youngest_merged_rev(youngest_merged_rev,
                                           target_history_as_mergeinfo,
                                           source_mergeinfo,
                                           iterpool));
        }
      else
        {



          svn_node_kind_t kind;

          SVN_ERR(svn_ra_check_path(source_ra_session,
                                    path_rel_to_session,
                                    source_loc->rev, &kind, iterpool));
          if (kind == svn_node_none)
              continue;



          SVN_ERR(svn_client__get_repos_mergeinfo(
                    &source_mergeinfo, source_ra_session,
                    source_pathrev->url, source_pathrev->rev,
                    svn_mergeinfo_inherited, FALSE ,
                    iterpool));
          if (!source_mergeinfo)
            source_mergeinfo = apr_hash_make(iterpool);
        }




      SVN_ERR(find_unmerged_mergeinfo_subroutine(
                &filtered_mergeinfo, target_history_as_mergeinfo,
                source_mergeinfo, source_pathrev,
                source_ra_session, ctx, scratch_pool, iterpool));
      svn_hash_sets(new_catalog, apr_pstrdup(scratch_pool, source_path),
                    filtered_mergeinfo);
    }






  for (hi = apr_hash_first(scratch_pool, source_catalog);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *source_path = apr_hash_this_key(hi);
      const char *path_rel_to_session =
        svn_relpath_skip_ancestor(source_repos_rel_path, source_path);
      const char *source_url;
      svn_mergeinfo_t source_mergeinfo = apr_hash_this_val(hi);
      svn_mergeinfo_t filtered_mergeinfo;
      svn_client__pathrev_t *target_pathrev;
      svn_mergeinfo_t target_history_as_mergeinfo;
      svn_error_t *err;

      svn_pool_clear(iterpool);

      source_url = svn_path_url_add_component2(source_loc->url,
                                               path_rel_to_session, iterpool);
      target_pathrev = svn_client__pathrev_join_relpath(
                         &target->loc, path_rel_to_session, iterpool);
      err = svn_client__get_history_as_mergeinfo(&target_history_as_mergeinfo,
                                                 ((void*)0) ,
                                                 target_pathrev,
                                                 target->loc.rev,
                                                 SVN_INVALID_REVNUM,
                                                 target_ra_session,
                                                 ctx, iterpool);
      if (err)
        {
          if (err->apr_err == SVN_ERR_FS_NOT_FOUND
              || err->apr_err == SVN_ERR_RA_DAV_REQUEST_FAILED)
            {


              svn_error_clear(err);
              err = ((void*)0);
            }
          else
            {
              return svn_error_trace(err);
            }
        }
      else
        {
          svn_client__pathrev_t *pathrev;

          SVN_ERR(find_youngest_merged_rev(youngest_merged_rev,
                                           target_history_as_mergeinfo,
                                           source_mergeinfo,
                                           iterpool));





          SVN_ERR(svn_client__pathrev_create_with_session(
                    &pathrev, source_ra_session, target->loc.rev, source_url,
                    iterpool));
          SVN_ERR(find_unmerged_mergeinfo_subroutine(
                    &filtered_mergeinfo, target_history_as_mergeinfo,
                    source_mergeinfo, pathrev,
                    source_ra_session, ctx, scratch_pool, iterpool));
          if (apr_hash_count(filtered_mergeinfo))
            svn_hash_sets(new_catalog,
                          apr_pstrdup(scratch_pool, source_path),
                          filtered_mergeinfo);
        }
    }



  if (SVN_IS_VALID_REVNUM(*youngest_merged_rev))
    SVN_ERR(svn_mergeinfo__filter_catalog_by_ranges(&new_catalog,
                                                    new_catalog,
                                                    *youngest_merged_rev,
                                                    0,
                                                    TRUE,
                                                    scratch_pool,
                                                    scratch_pool));


  *unmerged_to_source_catalog = svn_mergeinfo_catalog_dup(new_catalog,
                                                          result_pool);
  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
