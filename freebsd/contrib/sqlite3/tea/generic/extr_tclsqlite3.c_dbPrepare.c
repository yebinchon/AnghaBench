
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_3__ {int maxStmt; int db; scalar_t__ bLegacyPrepare; } ;
typedef TYPE_1__ SqliteDb ;


 unsigned int SQLITE_PREPARE_PERSISTENT ;
 int sqlite3_prepare (int ,char const*,int,int **,char const**) ;
 int sqlite3_prepare_v3 (int ,char const*,int,unsigned int,int **,char const**) ;

__attribute__((used)) static int dbPrepare(
  SqliteDb *pDb,
  const char *zSql,
  sqlite3_stmt **ppStmt,
  const char **pzOut
){
  unsigned int prepFlags = 0;
  if( pDb->maxStmt>5 ) prepFlags = SQLITE_PREPARE_PERSISTENT;

  return sqlite3_prepare_v3(pDb->db, zSql, -1, prepFlags, ppStmt, pzOut);
}
