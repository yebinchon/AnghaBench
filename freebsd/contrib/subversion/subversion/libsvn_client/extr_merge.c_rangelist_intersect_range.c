
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_rangelist_t ;
typedef int svn_merge_range_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_array_make (int *,int ,int) ;
 int * svn_rangelist__initialize (scalar_t__,scalar_t__,int ,int *) ;
 int svn_rangelist_intersect (int **,int *,int const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
rangelist_intersect_range(svn_rangelist_t **out_rangelist,
                          const svn_rangelist_t *in_rangelist,
                          svn_revnum_t rev1,
                          svn_revnum_t rev2,
                          svn_boolean_t consider_inheritance,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  SVN_ERR_ASSERT(rev1 <= rev2);

  if (rev1 < rev2)
    {
      svn_rangelist_t *simple_rangelist =
        svn_rangelist__initialize(rev1, rev2, TRUE, scratch_pool);

      SVN_ERR(svn_rangelist_intersect(out_rangelist,
                                      simple_rangelist, in_rangelist,
                                      consider_inheritance, result_pool));
    }
  else
    {
      *out_rangelist = apr_array_make(result_pool, 0,
                                      sizeof(svn_merge_range_t *));
    }
  return SVN_NO_ERROR;
}
