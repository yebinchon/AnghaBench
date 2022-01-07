
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_module ;
struct TYPE_5__ {int mutex; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_OK ;
 int sqlite3ApiExit (TYPE_1__*,int) ;
 int sqlite3VtabCreateModule (TYPE_1__*,char const*,int const*,void*,void (*) (void*)) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

__attribute__((used)) static int createModule(
  sqlite3 *db,
  const char *zName,
  const sqlite3_module *pModule,
  void *pAux,
  void (*xDestroy)(void *)
){
  int rc = SQLITE_OK;

  sqlite3_mutex_enter(db->mutex);
  (void)sqlite3VtabCreateModule(db, zName, pModule, pAux, xDestroy);
  rc = sqlite3ApiExit(db, rc);
  if( rc!=SQLITE_OK && xDestroy ) xDestroy(pAux);
  sqlite3_mutex_leave(db->mutex);
  return rc;
}
