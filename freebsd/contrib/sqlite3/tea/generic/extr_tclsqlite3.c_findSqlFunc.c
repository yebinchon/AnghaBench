
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* zName; struct TYPE_6__* pNext; scalar_t__ pScript; TYPE_1__* pDb; int interp; } ;
struct TYPE_5__ {TYPE_2__* pFunc; int interp; } ;
typedef TYPE_1__ SqliteDb ;
typedef TYPE_2__ SqlFunc ;


 scalar_t__ Tcl_Alloc (int) ;
 int Tcl_Free (char*) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ sqlite3_stricmp (char*,char*) ;
 int strlen30 (char const*) ;

__attribute__((used)) static SqlFunc *findSqlFunc(SqliteDb *pDb, const char *zName){
  SqlFunc *p, *pNew;
  int nName = strlen30(zName);
  pNew = (SqlFunc*)Tcl_Alloc( sizeof(*pNew) + nName + 1 );
  pNew->zName = (char*)&pNew[1];
  memcpy(pNew->zName, zName, nName+1);
  for(p=pDb->pFunc; p; p=p->pNext){
    if( sqlite3_stricmp(p->zName, pNew->zName)==0 ){
      Tcl_Free((char*)pNew);
      return p;
    }
  }
  pNew->interp = pDb->interp;
  pNew->pDb = pDb;
  pNew->pScript = 0;
  pNew->pNext = pDb->pFunc;
  pDb->pFunc = pNew;
  return pNew;
}
