
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mutex; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_MISUSE_BKPT ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_UTF8 ;
 scalar_t__ sqlite3FindFunction (TYPE_1__*,char const*,int,int ,int ) ;
 int sqlite3InvalidFunction ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;
 int sqlite3_create_function_v2 (TYPE_1__*,char const*,int,int ,char*,int ,int ,int ,int ) ;
 int sqlite3_free ;
 char* sqlite3_mprintf (char const*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_overload_function(
  sqlite3 *db,
  const char *zName,
  int nArg
){
  int rc;
  char *zCopy;






  sqlite3_mutex_enter(db->mutex);
  rc = sqlite3FindFunction(db, zName, nArg, SQLITE_UTF8, 0)!=0;
  sqlite3_mutex_leave(db->mutex);
  if( rc ) return SQLITE_OK;
  zCopy = sqlite3_mprintf(zName);
  if( zCopy==0 ) return SQLITE_NOMEM;
  return sqlite3_create_function_v2(db, zName, nArg, SQLITE_UTF8,
                           zCopy, sqlite3InvalidFunction, 0, 0, sqlite3_free);
}
