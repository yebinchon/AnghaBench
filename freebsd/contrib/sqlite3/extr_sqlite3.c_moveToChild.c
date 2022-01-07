
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ nSize; } ;
struct TYPE_7__ {scalar_t__ eState; int iPage; int curFlags; int curPagerFlags; int pPage; scalar_t__ ix; int * apPage; scalar_t__* aiIdx; TYPE_1__ info; int * pBt; } ;
typedef int BtShared ;
typedef TYPE_2__ BtCursor ;


 int BTCF_ValidNKey ;
 int BTCF_ValidOvfl ;
 int BTCURSOR_MAX_DEPTH ;
 scalar_t__ CURSOR_VALID ;
 int SQLITE_CORRUPT_BKPT ;
 int assert (int) ;
 int cursorOwnsBtShared (TYPE_2__*) ;
 int getAndInitPage (int *,int ,int *,TYPE_2__*,int ) ;

__attribute__((used)) static int moveToChild(BtCursor *pCur, u32 newPgno){
  BtShared *pBt = pCur->pBt;

  assert( cursorOwnsBtShared(pCur) );
  assert( pCur->eState==CURSOR_VALID );
  assert( pCur->iPage<BTCURSOR_MAX_DEPTH );
  assert( pCur->iPage>=0 );
  if( pCur->iPage>=(BTCURSOR_MAX_DEPTH-1) ){
    return SQLITE_CORRUPT_BKPT;
  }
  pCur->info.nSize = 0;
  pCur->curFlags &= ~(BTCF_ValidNKey|BTCF_ValidOvfl);
  pCur->aiIdx[pCur->iPage] = pCur->ix;
  pCur->apPage[pCur->iPage] = pCur->pPage;
  pCur->ix = 0;
  pCur->iPage++;
  return getAndInitPage(pBt, newPgno, &pCur->pPage, pCur, pCur->curPagerFlags);
}
