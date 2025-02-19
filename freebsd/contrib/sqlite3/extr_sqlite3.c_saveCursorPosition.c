
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ eState; scalar_t__ pKey; int curFlags; scalar_t__ skipNext; } ;
typedef TYPE_1__ BtCursor ;


 int BTCF_AtLast ;
 int BTCF_ValidNKey ;
 int BTCF_ValidOvfl ;
 scalar_t__ CURSOR_REQUIRESEEK ;
 scalar_t__ CURSOR_SKIPNEXT ;
 scalar_t__ CURSOR_VALID ;
 int SQLITE_OK ;
 int assert (int) ;
 int btreeReleaseAllCursorPages (TYPE_1__*) ;
 int cursorHoldsMutex (TYPE_1__*) ;
 int saveCursorKey (TYPE_1__*) ;

__attribute__((used)) static int saveCursorPosition(BtCursor *pCur){
  int rc;

  assert( CURSOR_VALID==pCur->eState || CURSOR_SKIPNEXT==pCur->eState );
  assert( 0==pCur->pKey );
  assert( cursorHoldsMutex(pCur) );

  if( pCur->eState==CURSOR_SKIPNEXT ){
    pCur->eState = CURSOR_VALID;
  }else{
    pCur->skipNext = 0;
  }

  rc = saveCursorKey(pCur);
  if( rc==SQLITE_OK ){
    btreeReleaseAllCursorPages(pCur);
    pCur->eState = CURSOR_REQUIRESEEK;
  }

  pCur->curFlags &= ~(BTCF_ValidNKey|BTCF_ValidOvfl|BTCF_AtLast);
  return rc;
}
