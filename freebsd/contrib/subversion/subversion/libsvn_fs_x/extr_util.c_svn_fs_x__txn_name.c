
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__txn_id_t ;
typedef int apr_pool_t ;


 int SVN_INT64_BUFFER_SIZE ;
 char* apr_palloc (int *,int ) ;
 int svn__ui64tobase36 (char*,int ) ;

const char *
svn_fs_x__txn_name(svn_fs_x__txn_id_t txn_id,
                   apr_pool_t *result_pool)
{
  char *p = apr_palloc(result_pool, SVN_INT64_BUFFER_SIZE);
  svn__ui64tobase36(p, txn_id);
  return p;
}
