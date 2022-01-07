
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_8__ {scalar_t__ nelts; } ;
typedef TYPE_1__ svn_rangelist_t ;
typedef scalar_t__ svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_first (int *,scalar_t__) ;
 scalar_t__ apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 int apr_pstrdup (int *,char const*) ;
 int rangelist_intersect_or_remove (TYPE_1__**,TYPE_1__*,TYPE_1__*,int,int ,int *) ;
 int svn_hash_sets (scalar_t__,int ,TYPE_1__*) ;
 TYPE_1__* svn_rangelist__initialize (scalar_t__,scalar_t__,int ,int *) ;

svn_error_t *
svn_mergeinfo__filter_mergeinfo_by_ranges(svn_mergeinfo_t *filtered_mergeinfo,
                                          svn_mergeinfo_t mergeinfo,
                                          svn_revnum_t youngest_rev,
                                          svn_revnum_t oldest_rev,
                                          svn_boolean_t include_range,
                                          apr_pool_t *result_pool,
                                          apr_pool_t *scratch_pool)
{
  SVN_ERR_ASSERT(SVN_IS_VALID_REVNUM(youngest_rev));
  SVN_ERR_ASSERT(SVN_IS_VALID_REVNUM(oldest_rev));
  SVN_ERR_ASSERT(oldest_rev < youngest_rev);

  *filtered_mergeinfo = apr_hash_make(result_pool);

  if (mergeinfo)
    {
      apr_hash_index_t *hi;
      svn_rangelist_t *filter_rangelist =
        svn_rangelist__initialize(oldest_rev, youngest_rev, TRUE,
                                  scratch_pool);

      for (hi = apr_hash_first(scratch_pool, mergeinfo);
           hi;
           hi = apr_hash_next(hi))
        {
          const char *path = apr_hash_this_key(hi);
          svn_rangelist_t *rangelist = apr_hash_this_val(hi);

          if (rangelist->nelts)
            {
              svn_rangelist_t *new_rangelist;

              SVN_ERR(rangelist_intersect_or_remove(
                        &new_rangelist, filter_rangelist, rangelist,
                        ! include_range, FALSE, result_pool));

              if (new_rangelist->nelts)
                svn_hash_sets(*filtered_mergeinfo,
                              apr_pstrdup(result_pool, path), new_rangelist);
            }
        }
    }
  return SVN_NO_ERROR;
}
