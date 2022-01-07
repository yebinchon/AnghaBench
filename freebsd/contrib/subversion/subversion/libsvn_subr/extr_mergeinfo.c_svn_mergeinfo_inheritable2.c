
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_8__ {scalar_t__ nelts; } ;
typedef TYPE_1__ svn_rangelist_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int ,int ,int ,TYPE_1__*) ;
 char* apr_hash_this_key (int *) ;
 int apr_hash_this_key_len (int *) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 int apr_pstrmemdup (int *,char const*,int ) ;
 scalar_t__ svn_path_compare_paths (char const*,char const*) ;
 TYPE_1__* svn_rangelist_dup (TYPE_1__*,int *) ;
 int svn_rangelist_inheritable2 (TYPE_1__**,TYPE_1__*,int ,int ,int ,int *,int *) ;

svn_error_t *
svn_mergeinfo_inheritable2(svn_mergeinfo_t *output,
                           svn_mergeinfo_t mergeinfo,
                           const char *path,
                           svn_revnum_t start,
                           svn_revnum_t end,
                           svn_boolean_t inheritable,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  svn_mergeinfo_t inheritable_mergeinfo = apr_hash_make(result_pool);

  for (hi = apr_hash_first(scratch_pool, mergeinfo);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *key = apr_hash_this_key(hi);
      apr_ssize_t keylen = apr_hash_this_key_len(hi);
      svn_rangelist_t *rangelist = apr_hash_this_val(hi);
      svn_rangelist_t *inheritable_rangelist;

      if (!path || svn_path_compare_paths(path, key) == 0)
        SVN_ERR(svn_rangelist_inheritable2(&inheritable_rangelist, rangelist,
                                           start, end, inheritable,
                                           result_pool, scratch_pool));
      else
        inheritable_rangelist = svn_rangelist_dup(rangelist, result_pool);



      if (inheritable_rangelist->nelts)
        apr_hash_set(inheritable_mergeinfo,
                     apr_pstrmemdup(result_pool, key, keylen), keylen,
                     inheritable_rangelist);
    }
  *output = inheritable_mergeinfo;
  return SVN_NO_ERROR;
}
