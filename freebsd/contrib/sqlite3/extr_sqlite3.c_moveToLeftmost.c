
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ eState; scalar_t__ ix; TYPE_1__* pPage; } ;
struct TYPE_7__ {scalar_t__ nCell; int leaf; } ;
typedef int Pgno ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ BtCursor ;


 scalar_t__ CURSOR_VALID ;
 int SQLITE_OK ;
 int assert (int) ;
 int cursorOwnsBtShared (TYPE_2__*) ;
 int findCell (TYPE_1__*,scalar_t__) ;
 int get4byte (int ) ;
 int moveToChild (TYPE_2__*,int ) ;

__attribute__((used)) static int moveToLeftmost(BtCursor *pCur){
  Pgno pgno;
  int rc = SQLITE_OK;
  MemPage *pPage;

  assert( cursorOwnsBtShared(pCur) );
  assert( pCur->eState==CURSOR_VALID );
  while( rc==SQLITE_OK && !(pPage = pCur->pPage)->leaf ){
    assert( pCur->ix<pPage->nCell );
    pgno = get4byte(findCell(pPage, pCur->ix));
    rc = moveToChild(pCur, pgno);
  }
  return rc;
}
