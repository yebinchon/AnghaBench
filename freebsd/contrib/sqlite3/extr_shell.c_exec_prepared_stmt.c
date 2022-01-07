
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_4__ {scalar_t__ cMode; } ;
typedef TYPE_1__ ShellState ;


 scalar_t__ MODE_Insert ;
 int SQLITE_ABORT ;
 int SQLITE_BLOB ;
 int SQLITE_NOMEM ;
 int SQLITE_NULL ;
 int SQLITE_ROW ;
 int assert (int) ;
 scalar_t__ shell_callback (TYPE_1__*,int,char**,char**,int*) ;
 int sqlite3_column_count (int *) ;
 scalar_t__ sqlite3_column_name (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_column_type (int *,int) ;
 int sqlite3_free (void*) ;
 void* sqlite3_malloc64 (int) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static void exec_prepared_stmt(
  ShellState *pArg,
  sqlite3_stmt *pStmt
){
  int rc;




  rc = sqlite3_step(pStmt);

  if( SQLITE_ROW == rc ){

    int nCol = sqlite3_column_count(pStmt);
    void *pData = sqlite3_malloc64(3*nCol*sizeof(const char*) + 1);
    if( !pData ){
      rc = SQLITE_NOMEM;
    }else{
      char **azCols = (char **)pData;
      char **azVals = &azCols[nCol];
      int *aiTypes = (int *)&azVals[nCol];
      int i, x;
      assert(sizeof(int) <= sizeof(char *));

      for(i=0; i<nCol; i++){
        azCols[i] = (char *)sqlite3_column_name(pStmt, i);
      }
      do{

        for(i=0; i<nCol; i++){
          aiTypes[i] = x = sqlite3_column_type(pStmt, i);
          if( x==SQLITE_BLOB && pArg && pArg->cMode==MODE_Insert ){
            azVals[i] = "";
          }else{
            azVals[i] = (char*)sqlite3_column_text(pStmt, i);
          }
          if( !azVals[i] && (aiTypes[i]!=SQLITE_NULL) ){
            rc = SQLITE_NOMEM;
            break;
          }
        }


        if( SQLITE_ROW == rc ){

          if( shell_callback(pArg, nCol, azVals, azCols, aiTypes) ){
            rc = SQLITE_ABORT;
          }else{
            rc = sqlite3_step(pStmt);
          }
        }
      } while( SQLITE_ROW == rc );
      sqlite3_free(pData);
    }
  }
}
