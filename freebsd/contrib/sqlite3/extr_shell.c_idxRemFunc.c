
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IdxRemSlot {int eType; char* z; int n; int nByte; int rVal; int iVal; } ;
struct IdxRemCtx {int nSlot; struct IdxRemSlot* aSlot; } ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;







 int SQLITE_TRANSIENT ;
 int assert (int) ;
 int memcpy (char*,int ,int) ;
 scalar_t__ sqlite3_realloc (char*,int) ;
 int sqlite3_result_blob (int *,char*,int,int ) ;
 int sqlite3_result_double (int *,int ) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 scalar_t__ sqlite3_user_data (int *) ;
 int sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 int sqlite3_value_double (int *) ;
 int sqlite3_value_int (int *) ;
 int sqlite3_value_int64 (int *) ;
 int sqlite3_value_text (int *) ;
 int sqlite3_value_type (int *) ;

__attribute__((used)) static void idxRemFunc(
  sqlite3_context *pCtx,
  int argc,
  sqlite3_value **argv
){
  struct IdxRemCtx *p = (struct IdxRemCtx*)sqlite3_user_data(pCtx);
  struct IdxRemSlot *pSlot;
  int iSlot;
  assert( argc==2 );

  iSlot = sqlite3_value_int(argv[0]);
  assert( iSlot<=p->nSlot );
  pSlot = &p->aSlot[iSlot];

  switch( pSlot->eType ){
    case 129:

      break;

    case 130:
      sqlite3_result_int64(pCtx, pSlot->iVal);
      break;

    case 131:
      sqlite3_result_double(pCtx, pSlot->rVal);
      break;

    case 132:
      sqlite3_result_blob(pCtx, pSlot->z, pSlot->n, SQLITE_TRANSIENT);
      break;

    case 128:
      sqlite3_result_text(pCtx, pSlot->z, pSlot->n, SQLITE_TRANSIENT);
      break;
  }

  pSlot->eType = sqlite3_value_type(argv[1]);
  switch( pSlot->eType ){
    case 129:

      break;

    case 130:
      pSlot->iVal = sqlite3_value_int64(argv[1]);
      break;

    case 131:
      pSlot->rVal = sqlite3_value_double(argv[1]);
      break;

    case 132:
    case 128: {
      int nByte = sqlite3_value_bytes(argv[1]);
      if( nByte>pSlot->nByte ){
        char *zNew = (char*)sqlite3_realloc(pSlot->z, nByte*2);
        if( zNew==0 ){
          sqlite3_result_error_nomem(pCtx);
          return;
        }
        pSlot->nByte = nByte*2;
        pSlot->z = zNew;
      }
      pSlot->n = nByte;
      if( pSlot->eType==132 ){
        memcpy(pSlot->z, sqlite3_value_blob(argv[1]), nByte);
      }else{
        memcpy(pSlot->z, sqlite3_value_text(argv[1]), nByte);
      }
      break;
    }
  }
}
