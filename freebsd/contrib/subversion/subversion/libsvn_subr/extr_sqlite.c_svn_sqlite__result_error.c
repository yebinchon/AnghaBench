
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context; } ;
typedef TYPE_1__ svn_sqlite__context_t ;


 int sqlite3_result_error (int ,char const*,int) ;

void
svn_sqlite__result_error(svn_sqlite__context_t *sctx, const char *msg, int num)
{
  sqlite3_result_error(sctx->context, msg, num);
}
