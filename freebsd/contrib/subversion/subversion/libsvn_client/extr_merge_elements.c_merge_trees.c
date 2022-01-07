
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_element__tree_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int verbose_notify (char*) ;

__attribute__((used)) static svn_error_t *
merge_trees(svn_element__tree_t **merge_result_p,
            void **conflicts_p,
            svn_element__tree_t *tree_left,
            svn_element__tree_t *tree_right,
            svn_element__tree_t *tree_target,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  verbose_notify("--- Merging trees");


  *merge_result_p = ((void*)0);
  *conflicts_p = ((void*)0);
  return SVN_NO_ERROR;
}
