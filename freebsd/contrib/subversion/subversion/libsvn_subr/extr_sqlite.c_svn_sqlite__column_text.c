
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s3stmt; } ;
typedef TYPE_1__ svn_sqlite__stmt_t ;
typedef int apr_pool_t ;


 char* apr_pstrdup (int *,char const*) ;
 scalar_t__ sqlite3_column_text (int ,int) ;

const char *
svn_sqlite__column_text(svn_sqlite__stmt_t *stmt, int column,
                        apr_pool_t *result_pool)
{

  const char *result = (const char *)sqlite3_column_text(stmt->s3stmt, column);

  if (result_pool && result != ((void*)0))
    result = apr_pstrdup(result_pool, result);

  return result;
}
