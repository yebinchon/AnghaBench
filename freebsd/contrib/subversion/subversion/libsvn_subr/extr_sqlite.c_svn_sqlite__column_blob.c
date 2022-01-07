
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s3stmt; } ;
typedef TYPE_1__ svn_sqlite__stmt_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 void* apr_pmemdup (int *,void const*,int ) ;
 void* sqlite3_column_blob (int ,int) ;
 int sqlite3_column_bytes (int ,int) ;

const void *
svn_sqlite__column_blob(svn_sqlite__stmt_t *stmt, int column,
                        apr_size_t *len, apr_pool_t *result_pool)
{
  const void *val = sqlite3_column_blob(stmt->s3stmt, column);
  *len = sqlite3_column_bytes(stmt->s3stmt, column);

  if (result_pool && val != ((void*)0))
    val = apr_pmemdup(result_pool, val, *len);

  return val;
}
