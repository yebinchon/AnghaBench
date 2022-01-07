
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pExpert; } ;
struct TYPE_5__ {TYPE_1__ expert; } ;
typedef TYPE_2__ ShellState ;


 int assert (int) ;
 int sqlite3_expert_sql (int,char const*,char**) ;

__attribute__((used)) static int expertHandleSQL(
  ShellState *pState,
  const char *zSql,
  char **pzErr
){
  assert( pState->expert.pExpert );
  assert( pzErr==0 || *pzErr==0 );
  return sqlite3_expert_sql(pState->expert.pExpert, zSql, pzErr);
}
