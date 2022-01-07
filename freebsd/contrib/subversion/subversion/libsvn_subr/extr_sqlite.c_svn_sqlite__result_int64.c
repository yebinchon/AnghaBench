
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context; } ;
typedef TYPE_1__ svn_sqlite__context_t ;
typedef int apr_int64_t ;


 int sqlite3_result_int64 (int ,int ) ;

void
svn_sqlite__result_int64(svn_sqlite__context_t *sctx, apr_int64_t val)
{
  sqlite3_result_int64(sctx->context, val);
}
