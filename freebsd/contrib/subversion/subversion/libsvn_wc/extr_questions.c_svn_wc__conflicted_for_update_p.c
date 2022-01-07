
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int internal_conflicted_p (int*,int*,int*,int*,int *,char const*,int *) ;

svn_error_t *
svn_wc__conflicted_for_update_p(svn_boolean_t *conflicted_p,
                                svn_boolean_t *conflict_ignored_p,
                                svn_wc__db_t *db,
                                const char *local_abspath,
                                svn_boolean_t tree_only,
                                apr_pool_t *scratch_pool)
{
  svn_boolean_t text_conflicted, prop_conflicted, tree_conflicted;
  svn_boolean_t conflict_ignored;

  if (!conflict_ignored_p)
    conflict_ignored_p = &conflict_ignored;

  SVN_ERR(internal_conflicted_p(tree_only ? ((void*)0): &text_conflicted,
                                tree_only ? ((void*)0): &prop_conflicted,
                                &tree_conflicted, conflict_ignored_p,
                                db, local_abspath, scratch_pool));
  if (tree_only)
    *conflicted_p = tree_conflicted;
  else
    *conflicted_p = text_conflicted || prop_conflicted || tree_conflicted;

  return SVN_NO_ERROR;
}
