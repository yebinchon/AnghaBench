
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_skel__parse (void const*,int ,int *) ;
 int svn_skel__parse_proplist (int **,int ,int *) ;
 void* svn_sqlite__column_blob (int *,int,int *,int *) ;

svn_error_t *
svn_sqlite__column_properties(apr_hash_t **props,
                              svn_sqlite__stmt_t *stmt,
                              int column,
                              apr_pool_t *result_pool,
                              apr_pool_t *scratch_pool)
{
  apr_size_t len;
  const void *val;


  val = svn_sqlite__column_blob(stmt, column, &len, ((void*)0));
  if (val == ((void*)0))
    {
      *props = ((void*)0);
      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_skel__parse_proplist(props,
                                   svn_skel__parse(val, len, scratch_pool),
                                   result_pool));

  return SVN_NO_ERROR;
}
