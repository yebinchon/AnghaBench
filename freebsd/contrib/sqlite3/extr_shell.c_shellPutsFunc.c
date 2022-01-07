
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_2__ {int out; } ;
typedef TYPE_1__ ShellState ;


 int sqlite3_result_value (int *,int *) ;
 scalar_t__ sqlite3_user_data (int *) ;
 int sqlite3_value_text (int *) ;
 int utf8_printf (int ,char*,int ) ;

__attribute__((used)) static void shellPutsFunc(
  sqlite3_context *pCtx,
  int nVal,
  sqlite3_value **apVal
){
  ShellState *p = (ShellState*)sqlite3_user_data(pCtx);
  (void)nVal;
  utf8_printf(p->out, "%s\n", sqlite3_value_text(apVal[0]));
  sqlite3_result_value(pCtx, apVal[0]);
}
