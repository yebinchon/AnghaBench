
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_rangelist_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * svn_error_trace (int ) ;
 int svn_rangelist__canonicalize (int *,int *) ;
 int svn_rangelist_merge2 (int *,int const*,int *,int *) ;

svn_error_t *
svn_rangelist_merge(svn_rangelist_t **rangelist,
                    const svn_rangelist_t *changes,
                    apr_pool_t *pool)
{
  SVN_ERR(svn_rangelist_merge2(*rangelist, changes,
                               pool, pool));

  return svn_error_trace(
            svn_rangelist__canonicalize(*rangelist, pool));
}
