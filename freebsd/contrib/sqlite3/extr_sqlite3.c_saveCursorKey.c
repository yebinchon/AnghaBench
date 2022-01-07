
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {scalar_t__ eState; scalar_t__ pKey; int nKey; scalar_t__ curIntKey; } ;
typedef TYPE_1__ BtCursor ;


 scalar_t__ CURSOR_VALID ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int cursorHoldsMutex (TYPE_1__*) ;
 int memset (int *,int ,int) ;
 int sqlite3BtreeIntegerKey (TYPE_1__*) ;
 int sqlite3BtreePayload (TYPE_1__*,int ,int,void*) ;
 int sqlite3BtreePayloadSize (TYPE_1__*) ;
 void* sqlite3Malloc (int) ;
 int sqlite3_free (void*) ;

__attribute__((used)) static int saveCursorKey(BtCursor *pCur){
  int rc = SQLITE_OK;
  assert( CURSOR_VALID==pCur->eState );
  assert( 0==pCur->pKey );
  assert( cursorHoldsMutex(pCur) );

  if( pCur->curIntKey ){

    pCur->nKey = sqlite3BtreeIntegerKey(pCur);
  }else{






    void *pKey;
    pCur->nKey = sqlite3BtreePayloadSize(pCur);
    pKey = sqlite3Malloc( pCur->nKey + 9 + 8 );
    if( pKey ){
      rc = sqlite3BtreePayload(pCur, 0, (int)pCur->nKey, pKey);
      if( rc==SQLITE_OK ){
        memset(((u8*)pKey)+pCur->nKey, 0, 9+8);
        pCur->pKey = pKey;
      }else{
        sqlite3_free(pKey);
      }
    }else{
      rc = SQLITE_NOMEM_BKPT;
    }
  }
  assert( !pCur->curIntKey || !pCur->pKey );
  return rc;
}
