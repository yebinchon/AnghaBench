
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_rangelist_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int *) ;
 int * svn_rangelist_remove (int **,int const*,int const*,int ,int *) ;

svn_error_t *
svn_rangelist_diff(svn_rangelist_t **deleted, svn_rangelist_t **added,
                   const svn_rangelist_t *from, const svn_rangelist_t *to,
                   svn_boolean_t consider_inheritance,
                   apr_pool_t *pool)
{
  SVN_ERR(svn_rangelist_remove(deleted, to, from, consider_inheritance,
                               pool));


  return svn_rangelist_remove(added, from, to, consider_inheritance, pool);
}
