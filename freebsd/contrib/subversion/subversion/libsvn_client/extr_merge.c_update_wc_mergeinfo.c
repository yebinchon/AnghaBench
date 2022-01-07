
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;


struct TYPE_32__ {scalar_t__ nelts; } ;
typedef TYPE_1__ svn_rangelist_t ;
typedef int * svn_mergeinfo_t ;
typedef int * svn_mergeinfo_catalog_t ;
typedef int svn_merge_range_t ;
struct TYPE_33__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct TYPE_34__ {int wc_ctx; } ;
typedef TYPE_3__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (TYPE_2__*) ;
 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_ERR_ENTRY_NOT_FOUND ;
 scalar_t__ SVN_ERR_WC_NOT_LOCKED ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_2__* SVN_NO_ERROR ;
 int TRUE ;
 TYPE_1__* apr_array_make (int *,int ,int) ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int * apr_hash_pool_get (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 char const* apr_pstrdup (int *,char const*) ;
 TYPE_2__* svn_client__get_wc_mergeinfo (int **,int *,int ,char const*,int *,int *,int ,TYPE_3__*,int *,int *) ;
 TYPE_2__* svn_client__parse_mergeinfo (int **,int ,char const*,int *,int *) ;
 TYPE_2__* svn_client__record_wc_mergeinfo (char const*,int *,int ,TYPE_3__*,int *) ;
 char* svn_dirent_skip_ancestor (char const*,char const*) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 char* svn_fspath__join (char const*,char const*,int *) ;
 void* svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,TYPE_1__*) ;
 int svn_mergeinfo__remove_empty_rangelists (int *,int *) ;
 TYPE_1__* svn_mergeinfo_dup (int *,int *) ;
 TYPE_2__* svn_mergeinfo_merge2 (int *,int *,int *,int *) ;
 int svn_mergeinfo_nearest_ancestor ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_1__* svn_rangelist_dup (TYPE_1__*,int *) ;
 TYPE_2__* svn_rangelist_merge2 (TYPE_1__*,TYPE_1__*,int *,int *) ;
 TYPE_2__* svn_rangelist_remove (TYPE_1__**,TYPE_1__*,TYPE_1__*,int ,int *) ;
 TYPE_2__* svn_rangelist_reverse (TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
update_wc_mergeinfo(svn_mergeinfo_catalog_t result_catalog,
                    const char *target_abspath,
                    const char *source_fspath,
                    apr_hash_t *merges,
                    svn_boolean_t is_rollback,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  apr_hash_index_t *hi;



  for (hi = apr_hash_first(scratch_pool, merges); hi; hi = apr_hash_next(hi))
    {
      const char *local_abspath = apr_hash_this_key(hi);
      svn_rangelist_t *ranges = apr_hash_this_val(hi);
      svn_rangelist_t *rangelist;
      svn_error_t *err;
      const char *local_abspath_rel_to_target;
      const char *fspath;
      svn_mergeinfo_t mergeinfo;

      svn_pool_clear(iterpool);



      err = svn_client__parse_mergeinfo(&mergeinfo, ctx->wc_ctx,
                                        local_abspath, iterpool, iterpool);




      if (err)
        {
          if (err->apr_err == SVN_ERR_WC_NOT_LOCKED
              || err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
            {
              svn_error_clear(err);
              continue;
            }
          else
            {
              return svn_error_trace(err);
            }
        }




      if (mergeinfo == ((void*)0) && ranges->nelts == 0)
        {
          SVN_ERR(svn_client__get_wc_mergeinfo(&mergeinfo, ((void*)0),
                                               svn_mergeinfo_nearest_ancestor,
                                               local_abspath, ((void*)0), ((void*)0),
                                               FALSE, ctx, iterpool, iterpool));
        }

      if (mergeinfo == ((void*)0))
        mergeinfo = apr_hash_make(iterpool);

      local_abspath_rel_to_target = svn_dirent_skip_ancestor(target_abspath,
                                                             local_abspath);
      SVN_ERR_ASSERT(local_abspath_rel_to_target != ((void*)0));
      fspath = svn_fspath__join(source_fspath,
                                local_abspath_rel_to_target,
                                iterpool);
      rangelist = svn_hash_gets(mergeinfo, fspath);
      if (rangelist == ((void*)0))
        rangelist = apr_array_make(iterpool, 0, sizeof(svn_merge_range_t *));

      if (is_rollback)
        {
          ranges = svn_rangelist_dup(ranges, iterpool);
          SVN_ERR(svn_rangelist_reverse(ranges, iterpool));
          SVN_ERR(svn_rangelist_remove(&rangelist, ranges, rangelist,
                                       FALSE,
                                       iterpool));
        }
      else
        {
          SVN_ERR(svn_rangelist_merge2(rangelist, ranges, iterpool, iterpool));
        }

      svn_hash_sets(mergeinfo, fspath, rangelist);

      if (is_rollback && apr_hash_count(mergeinfo) == 0)
        mergeinfo = ((void*)0);

      svn_mergeinfo__remove_empty_rangelists(mergeinfo, scratch_pool);

      if (result_catalog)
        {
          svn_mergeinfo_t existing_mergeinfo =
            svn_hash_gets(result_catalog, local_abspath);
          apr_pool_t *result_catalog_pool = apr_hash_pool_get(result_catalog);

          if (existing_mergeinfo)
            SVN_ERR(svn_mergeinfo_merge2(mergeinfo, existing_mergeinfo,
                                         result_catalog_pool, scratch_pool));
          svn_hash_sets(result_catalog,
                        apr_pstrdup(result_catalog_pool, local_abspath),
                        svn_mergeinfo_dup(mergeinfo, result_catalog_pool));
        }
      else
        {
          err = svn_client__record_wc_mergeinfo(local_abspath, mergeinfo,
                                                TRUE, ctx, iterpool);

          if (err && err->apr_err == SVN_ERR_ENTRY_NOT_FOUND)
            {
              svn_error_clear(err);
            }
          else
            SVN_ERR(err);
        }
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
