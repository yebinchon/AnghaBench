
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ nelts; } ;
typedef TYPE_1__ svn_rangelist_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 int apr_pstrdup (int *,char const*) ;
 TYPE_1__* svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,int ,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_rangelist_dup (TYPE_1__*,int *) ;
 int svn_rangelist_intersect (TYPE_1__**,TYPE_1__*,TYPE_1__*,int ,int *) ;

svn_error_t *
svn_mergeinfo_intersect2(svn_mergeinfo_t *mergeinfo,
                         svn_mergeinfo_t mergeinfo1,
                         svn_mergeinfo_t mergeinfo2,
                         svn_boolean_t consider_inheritance,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;

  *mergeinfo = apr_hash_make(result_pool);
  iterpool = svn_pool_create(scratch_pool);






  for (hi = apr_hash_first(scratch_pool, mergeinfo1);
       hi; hi = apr_hash_next(hi))
    {
      const char *path = apr_hash_this_key(hi);
      svn_rangelist_t *rangelist1 = apr_hash_this_val(hi);
      svn_rangelist_t *rangelist2;

      svn_pool_clear(iterpool);
      rangelist2 = svn_hash_gets(mergeinfo2, path);
      if (rangelist2)
        {
          SVN_ERR(svn_rangelist_intersect(&rangelist2, rangelist1, rangelist2,
                                          consider_inheritance, iterpool));
          if (rangelist2->nelts > 0)
            svn_hash_sets(*mergeinfo, apr_pstrdup(result_pool, path),
                          svn_rangelist_dup(rangelist2, result_pool));
        }
    }
  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
