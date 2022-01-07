
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc__conflicted_for_update_p (int *,int *,int *,char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
node_already_conflicted(svn_boolean_t *conflicted,
                        svn_boolean_t *conflict_ignored,
                        svn_wc__db_t *db,
                        const char *local_abspath,
                        apr_pool_t *scratch_pool)
{
  SVN_ERR(svn_wc__conflicted_for_update_p(conflicted, conflict_ignored, db,
                                          local_abspath, FALSE,
                                          scratch_pool));

  return SVN_NO_ERROR;
}
