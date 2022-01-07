
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ svn_mergeinfo_t ;
typedef int svn_error_t ;
struct TYPE_11__ {struct TYPE_11__ const* remaining_ranges; } ;
typedef TYPE_1__ svn_client__merge_path_t ;
struct TYPE_12__ {int ctx; int ra_session2; int paths_with_new_mergeinfo; scalar_t__ dry_run; } ;
typedef TYPE_2__ merge_cmd_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (TYPE_1__ const*) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_1__* find_nearest_ancestor (int *,int ,char const*) ;
 TYPE_1__* get_child_with_mergeinfo (int *,char const*) ;
 int insert_child_to_merge (int *,TYPE_1__*,int *) ;
 int svn_client__get_wc_mergeinfo (scalar_t__*,int *,int ,char const*,int *,int *,int ,int ,int *,int *) ;
 int svn_client__get_wc_or_repos_mergeinfo (scalar_t__*,int *,int *,int ,int ,int ,char const*,int ,int *) ;
 TYPE_1__* svn_client__merge_path_create (char const*,int *) ;
 int svn_client__record_wc_mergeinfo (char const*,scalar_t__,int ,int ,int *) ;
 int svn_mergeinfo_explicit ;
 int svn_mergeinfo_merge2 (scalar_t__,scalar_t__,int *,int *) ;
 int svn_mergeinfo_nearest_ancestor ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_1__ const* svn_rangelist_dup (TYPE_1__ const*,int *) ;

__attribute__((used)) static svn_error_t *
process_children_with_new_mergeinfo(merge_cmd_baton_t *merge_b,
                                    apr_array_header_t *children_with_mergeinfo,
                                    apr_pool_t *pool)
{
  apr_pool_t *iterpool;
  apr_hash_index_t *hi;

  if (!merge_b->paths_with_new_mergeinfo || merge_b->dry_run)
    return SVN_NO_ERROR;


  iterpool = svn_pool_create(pool);
  for (hi = apr_hash_first(pool, merge_b->paths_with_new_mergeinfo);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *abspath_with_new_mergeinfo = apr_hash_this_key(hi);
      svn_mergeinfo_t path_inherited_mergeinfo;
      svn_mergeinfo_t path_explicit_mergeinfo;
      svn_client__merge_path_t *new_child;

      svn_pool_clear(iterpool);
      SVN_ERR(svn_client__get_wc_mergeinfo(&path_explicit_mergeinfo, ((void*)0),
                                           svn_mergeinfo_explicit,
                                           abspath_with_new_mergeinfo,
                                           ((void*)0), ((void*)0), FALSE,
                                           merge_b->ctx,
                                           iterpool, iterpool));


      if (path_explicit_mergeinfo)
        {


          SVN_ERR(svn_client__get_wc_or_repos_mergeinfo(
            &path_inherited_mergeinfo,
            ((void*)0), ((void*)0),
            FALSE,
            svn_mergeinfo_nearest_ancestor,
            merge_b->ra_session2,
            abspath_with_new_mergeinfo,
            merge_b->ctx,
            iterpool));




          if (path_inherited_mergeinfo)
            {
              SVN_ERR(svn_mergeinfo_merge2(path_explicit_mergeinfo,
                                           path_inherited_mergeinfo,
                                           iterpool, iterpool));
              SVN_ERR(svn_client__record_wc_mergeinfo(
                                          abspath_with_new_mergeinfo,
                                          path_explicit_mergeinfo,
                                          FALSE, merge_b->ctx, iterpool));
            }


          new_child =
            get_child_with_mergeinfo(children_with_mergeinfo,
                                     abspath_with_new_mergeinfo);
          if (!new_child)
            {
              const svn_client__merge_path_t *parent
                = find_nearest_ancestor(children_with_mergeinfo,
                                        FALSE, abspath_with_new_mergeinfo);
              new_child
                = svn_client__merge_path_create(abspath_with_new_mergeinfo,
                                                pool);
              SVN_ERR_ASSERT(parent);
              SVN_ERR_ASSERT(parent->remaining_ranges);


              new_child->remaining_ranges = svn_rangelist_dup(
                 parent->remaining_ranges, pool);
              insert_child_to_merge(children_with_mergeinfo, new_child, pool);
            }
        }
    }
  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
