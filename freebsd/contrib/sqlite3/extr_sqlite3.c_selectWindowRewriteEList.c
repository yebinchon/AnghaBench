
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* pRewrite; } ;
struct TYPE_7__ {int * pSub; TYPE_1__ u; int xSelectCallback; int xExprCallback; int * pParse; int * pTab; int * pSrc; int * pWin; } ;
typedef TYPE_2__ WindowRewrite ;
typedef int Window ;
typedef TYPE_2__ Walker ;
typedef int Table ;
typedef int SrcList ;
typedef int Parse ;
typedef int ExprList ;


 int assert (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int selectWindowRewriteExprCb ;
 int selectWindowRewriteSelectCb ;
 int sqlite3WalkExprList (TYPE_2__*,int *) ;

__attribute__((used)) static void selectWindowRewriteEList(
  Parse *pParse,
  Window *pWin,
  SrcList *pSrc,
  ExprList *pEList,
  Table *pTab,
  ExprList **ppSub
){
  Walker sWalker;
  WindowRewrite sRewrite;

  assert( pWin!=0 );
  memset(&sWalker, 0, sizeof(Walker));
  memset(&sRewrite, 0, sizeof(WindowRewrite));

  sRewrite.pSub = *ppSub;
  sRewrite.pWin = pWin;
  sRewrite.pSrc = pSrc;
  sRewrite.pTab = pTab;

  sWalker.pParse = pParse;
  sWalker.xExprCallback = selectWindowRewriteExprCb;
  sWalker.xSelectCallback = selectWindowRewriteSelectCb;
  sWalker.u.pRewrite = &sRewrite;

  (void)sqlite3WalkExprList(&sWalker, pEList);

  *ppSub = sRewrite.pSub;
}
