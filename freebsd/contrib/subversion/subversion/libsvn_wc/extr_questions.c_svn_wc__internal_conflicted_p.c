
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
 int internal_conflicted_p (int *,int *,int *,int *,int *,char const*,int *) ;

svn_error_t *
svn_wc__internal_conflicted_p(svn_boolean_t *text_conflicted_p,
                              svn_boolean_t *prop_conflicted_p,
                              svn_boolean_t *tree_conflicted_p,
                              svn_wc__db_t *db,
                              const char *local_abspath,
                              apr_pool_t *scratch_pool)
{
  SVN_ERR(internal_conflicted_p(text_conflicted_p, prop_conflicted_p,
                                tree_conflicted_p, ((void*)0),
                                db, local_abspath, scratch_pool));
  return SVN_NO_ERROR;
}
