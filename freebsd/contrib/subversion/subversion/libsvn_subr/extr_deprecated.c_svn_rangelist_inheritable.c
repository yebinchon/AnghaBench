
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_rangelist_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int * svn_error_trace (int ) ;
 int svn_rangelist_inheritable2 (int **,int const*,int ,int ,int ,int *,int *) ;

svn_error_t *
svn_rangelist_inheritable(svn_rangelist_t **inheritable_rangelist,
                          const svn_rangelist_t *rangelist,
                          svn_revnum_t start,
                          svn_revnum_t end,
                          apr_pool_t *pool)
{
  return svn_error_trace(svn_rangelist_inheritable2(inheritable_rangelist,
                                                    rangelist,
                                                    start, end, TRUE,
                                                    pool, pool));
}
