
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab_cursor ;
typedef int fsdir_cursor ;


 int SQLITE_OK ;
 int fsdirResetCursor (int *) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static int fsdirClose(sqlite3_vtab_cursor *cur){
  fsdir_cursor *pCur = (fsdir_cursor*)cur;

  fsdirResetCursor(pCur);
  sqlite3_free(pCur);
  return SQLITE_OK;
}
