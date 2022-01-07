
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ eState; int skipNext; scalar_t__ pKey; int nKey; } ;
typedef TYPE_1__ BtCursor ;


 scalar_t__ CURSOR_FAULT ;
 scalar_t__ CURSOR_INVALID ;
 scalar_t__ CURSOR_REQUIRESEEK ;
 scalar_t__ CURSOR_SKIPNEXT ;
 scalar_t__ CURSOR_VALID ;
 int SQLITE_IOERR ;
 int SQLITE_OK ;
 int assert (int) ;
 int btreeMoveto (TYPE_1__*,scalar_t__,int ,int ,int*) ;
 int cursorOwnsBtShared (TYPE_1__*) ;
 scalar_t__ sqlite3FaultSim (int) ;
 int sqlite3_free (scalar_t__) ;

__attribute__((used)) static int btreeRestoreCursorPosition(BtCursor *pCur){
  int rc;
  int skipNext = 0;
  assert( cursorOwnsBtShared(pCur) );
  assert( pCur->eState>=CURSOR_REQUIRESEEK );
  if( pCur->eState==CURSOR_FAULT ){
    return pCur->skipNext;
  }
  pCur->eState = CURSOR_INVALID;
  if( sqlite3FaultSim(410) ){
    rc = SQLITE_IOERR;
  }else{
    rc = btreeMoveto(pCur, pCur->pKey, pCur->nKey, 0, &skipNext);
  }
  if( rc==SQLITE_OK ){
    sqlite3_free(pCur->pKey);
    pCur->pKey = 0;
    assert( pCur->eState==CURSOR_VALID || pCur->eState==CURSOR_INVALID );
    if( skipNext ) pCur->skipNext = skipNext;
    if( pCur->skipNext && pCur->eState==CURSOR_VALID ){
      pCur->eState = CURSOR_SKIPNEXT;
    }
  }
  return rc;
}
