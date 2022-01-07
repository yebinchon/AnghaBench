
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3_blob ;
struct TYPE_5__ {int mutex; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_6__ {TYPE_1__* db; int * pStmt; } ;
typedef TYPE_2__ Incrblob ;


 int SQLITE_OK ;
 int sqlite3DbFree (TYPE_1__*,TYPE_2__*) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_blob_close(sqlite3_blob *pBlob){
  Incrblob *p = (Incrblob *)pBlob;
  int rc;
  sqlite3 *db;

  if( p ){
    sqlite3_stmt *pStmt = p->pStmt;
    db = p->db;
    sqlite3_mutex_enter(db->mutex);
    sqlite3DbFree(db, p);
    sqlite3_mutex_leave(db->mutex);
    rc = sqlite3_finalize(pStmt);
  }else{
    rc = SQLITE_OK;
  }
  return rc;
}
