
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int sqlite3_stmt ;
struct TYPE_6__ {TYPE_3__* db; int * aVar; } ;
typedef TYPE_1__ Vdbe ;
struct TYPE_7__ {int mutex; } ;
typedef int Mem ;


 int ENC (TYPE_3__*) ;
 int SQLITE_OK ;
 void SQLITE_STATIC (void*) ;
 void SQLITE_TRANSIENT (void*) ;
 int sqlite3ApiExit (TYPE_3__*,int) ;
 int sqlite3Error (TYPE_3__*,int) ;
 int sqlite3VdbeChangeEncoding (int *,int ) ;
 int sqlite3VdbeMemSetStr (int *,void const*,int,scalar_t__,void (*) (void*)) ;
 int sqlite3_mutex_leave (int ) ;
 int vdbeUnbind (TYPE_1__*,int) ;

__attribute__((used)) static int bindText(
  sqlite3_stmt *pStmt,
  int i,
  const void *zData,
  int nData,
  void (*xDel)(void*),
  u8 encoding
){
  Vdbe *p = (Vdbe *)pStmt;
  Mem *pVar;
  int rc;

  rc = vdbeUnbind(p, i);
  if( rc==SQLITE_OK ){
    if( zData!=0 ){
      pVar = &p->aVar[i-1];
      rc = sqlite3VdbeMemSetStr(pVar, zData, nData, encoding, xDel);
      if( rc==SQLITE_OK && encoding!=0 ){
        rc = sqlite3VdbeChangeEncoding(pVar, ENC(p->db));
      }
      if( rc ){
        sqlite3Error(p->db, rc);
        rc = sqlite3ApiExit(p->db, rc);
      }
    }
    sqlite3_mutex_leave(p->db->mutex);
  }else if( xDel!=SQLITE_STATIC && xDel!=SQLITE_TRANSIENT ){
    xDel((void*)zData);
  }
  return rc;
}
