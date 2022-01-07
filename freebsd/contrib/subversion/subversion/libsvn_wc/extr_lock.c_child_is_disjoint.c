
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int svn_wc__db_is_switched (scalar_t__*,scalar_t__*,int *,int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
child_is_disjoint(svn_boolean_t *disjoint,
                  svn_wc__db_t *db,
                  const char *local_abspath,
                  apr_pool_t *scratch_pool)
{
  svn_boolean_t is_switched;


  SVN_ERR(svn_wc__db_is_switched(disjoint, &is_switched, ((void*)0),
                                 db, local_abspath, scratch_pool));

  if (*disjoint)
    return SVN_NO_ERROR;

  if (is_switched)
    *disjoint = TRUE;

  return SVN_NO_ERROR;
}
