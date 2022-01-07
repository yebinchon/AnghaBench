
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int aModule; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_7__ {int zName; } ;
typedef TYPE_2__ Module ;
typedef int HashElem ;


 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int createModule (TYPE_1__*,int ,int ,int ,int ) ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;
 scalar_t__ sqliteHashData (int *) ;
 int * sqliteHashFirst (int *) ;
 int * sqliteHashNext (int *) ;
 scalar_t__ strcmp (char const*,int ) ;

int sqlite3_drop_modules(sqlite3 *db, const char** azNames){
  HashElem *pThis, *pNext;



  for(pThis=sqliteHashFirst(&db->aModule); pThis; pThis=pNext){
    Module *pMod = (Module*)sqliteHashData(pThis);
    pNext = sqliteHashNext(pThis);
    if( azNames ){
      int ii;
      for(ii=0; azNames[ii]!=0 && strcmp(azNames[ii],pMod->zName)!=0; ii++){}
      if( azNames[ii]!=0 ) continue;
    }
    createModule(db, pMod->zName, 0, 0, 0);
  }
  return SQLITE_OK;
}
