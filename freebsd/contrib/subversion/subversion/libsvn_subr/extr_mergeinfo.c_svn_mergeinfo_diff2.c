
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * svn_hash__make (int *) ;
 int * svn_mergeinfo_dup (int *,int *) ;
 int walk_mergeinfo_hash_for_diff (int *,int *,int *,int *,int ,int *,int *) ;

svn_error_t *
svn_mergeinfo_diff2(svn_mergeinfo_t *deleted, svn_mergeinfo_t *added,
                    svn_mergeinfo_t from, svn_mergeinfo_t to,
                    svn_boolean_t consider_inheritance,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  if (from && to == ((void*)0))
    {
      *deleted = svn_mergeinfo_dup(from, result_pool);
      *added = svn_hash__make(result_pool);
    }
  else if (from == ((void*)0) && to)
    {
      *deleted = svn_hash__make(result_pool);
      *added = svn_mergeinfo_dup(to, result_pool);
    }
  else
    {
      *deleted = svn_hash__make(result_pool);
      *added = svn_hash__make(result_pool);

      if (from && to)
        {
          SVN_ERR(walk_mergeinfo_hash_for_diff(from, to, *deleted, *added,
                                               consider_inheritance,
                                               result_pool, scratch_pool));
        }
    }

  return SVN_NO_ERROR;
}
