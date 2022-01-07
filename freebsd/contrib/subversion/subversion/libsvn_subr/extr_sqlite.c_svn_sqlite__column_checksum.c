
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_checksum_deserialize (int const**,char const*,int *,int *) ;
 char* svn_sqlite__column_text (int *,int,int *) ;

svn_error_t *
svn_sqlite__column_checksum(const svn_checksum_t **checksum,
                            svn_sqlite__stmt_t *stmt, int column,
                            apr_pool_t *result_pool)
{
  const char *digest = svn_sqlite__column_text(stmt, column, ((void*)0));

  if (digest == ((void*)0))
    *checksum = ((void*)0);
  else
    SVN_ERR(svn_checksum_deserialize(checksum, digest,
                                     result_pool, result_pool));

  return SVN_NO_ERROR;
}
