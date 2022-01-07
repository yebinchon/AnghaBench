
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_conflict_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int svn_client_conflict_get_conflicted (int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
assert_tree_conflict(svn_client_conflict_t *conflict, apr_pool_t *scratch_pool)
{
  svn_boolean_t tree_conflicted;

  SVN_ERR(svn_client_conflict_get_conflicted(((void*)0), ((void*)0), &tree_conflicted,
                                             conflict, scratch_pool,
                                             scratch_pool));

  SVN_ERR_ASSERT(tree_conflicted);

  return SVN_NO_ERROR;
}
