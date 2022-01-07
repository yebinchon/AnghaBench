
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_9__ {int* aLimit; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_10__ {int nModuleArg; char** azModuleArg; int zName; } ;
typedef TYPE_2__ Table ;
struct TYPE_11__ {TYPE_1__* db; } ;
typedef TYPE_3__ Parse ;


 size_t SQLITE_LIMIT_COLUMN ;
 int sqlite3DbFree (TYPE_1__*,char*) ;
 char** sqlite3DbRealloc (TYPE_1__*,char**,int) ;
 int sqlite3ErrorMsg (TYPE_3__*,char*,int ) ;

__attribute__((used)) static void addModuleArgument(Parse *pParse, Table *pTable, char *zArg){
  sqlite3_int64 nBytes = sizeof(char *)*(2+pTable->nModuleArg);
  char **azModuleArg;
  sqlite3 *db = pParse->db;
  if( pTable->nModuleArg+3>=db->aLimit[SQLITE_LIMIT_COLUMN] ){
    sqlite3ErrorMsg(pParse, "too many columns on %s", pTable->zName);
  }
  azModuleArg = sqlite3DbRealloc(db, pTable->azModuleArg, nBytes);
  if( azModuleArg==0 ){
    sqlite3DbFree(db, zArg);
  }else{
    int i = pTable->nModuleArg++;
    azModuleArg[i] = zArg;
    azModuleArg[i+1] = 0;
    pTable->azModuleArg = azModuleArg;
  }
}
