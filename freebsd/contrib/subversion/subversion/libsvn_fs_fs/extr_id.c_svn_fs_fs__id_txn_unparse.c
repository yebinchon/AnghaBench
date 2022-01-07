
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int number; int revision; } ;
typedef TYPE_1__ svn_fs_fs__id_part_t ;
typedef int apr_pool_t ;


 int SVN_INT64_BUFFER_SIZE ;
 char const* apr_pstrmemdup (int *,char*,int) ;
 int svn__i64toa (char*,int ) ;
 int svn__ui64tobase36 (char*,int ) ;

const char *
svn_fs_fs__id_txn_unparse(const svn_fs_fs__id_part_t *txn_id,
                          apr_pool_t *pool)
{
  char string[2 * SVN_INT64_BUFFER_SIZE + 1];
  char *p = string;

  p += svn__i64toa(p, txn_id->revision);
  *(p++) = '-';
  p += svn__ui64tobase36(p, txn_id->number);

  return apr_pstrmemdup(pool, string, p - string);
}
