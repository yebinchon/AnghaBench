
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_fs__id_part_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;


 int SVN_INT64_BUFFER_SIZE ;
 char const* apr_psprintf (int *,char*,char const*,char*) ;
 int svn__ui64tobase36 (char*,int ) ;
 char* svn_fs_fs__id_txn_unparse (int const*,int *) ;

__attribute__((used)) static const char *
format_uniquifier(const svn_fs_fs__id_part_t *noderev_txn_id,
                  apr_uint64_t number,
                  apr_pool_t *pool)
{
  char buf[SVN_INT64_BUFFER_SIZE];
  const char *txn_id_str;

  txn_id_str = svn_fs_fs__id_txn_unparse(noderev_txn_id, pool);
  svn__ui64tobase36(buf, number);

  return apr_psprintf(pool, "%s/_%s", txn_id_str, buf);
}
