
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;


 char* svn_checksum_serialize (int const*,int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_sqlite__bind_text (int *,int,char const*) ;

svn_error_t *
svn_sqlite__bind_checksum(svn_sqlite__stmt_t *stmt,
                          int slot,
                          const svn_checksum_t *checksum,
                          apr_pool_t *scratch_pool)
{
  const char *csum_str;

  if (checksum == ((void*)0))
    csum_str = ((void*)0);
  else
    csum_str = svn_checksum_serialize(checksum, scratch_pool, scratch_pool);

  return svn_error_trace(svn_sqlite__bind_text(stmt, slot, csum_str));
}
