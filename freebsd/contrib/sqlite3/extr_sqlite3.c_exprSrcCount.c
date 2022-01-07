
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct SrcCount {int nOther; int nThis; TYPE_4__* pSrc; } ;
struct TYPE_8__ {struct SrcCount* pSrcCount; } ;
struct TYPE_10__ {TYPE_1__ u; } ;
typedef TYPE_3__ Walker ;
struct TYPE_12__ {scalar_t__ op; scalar_t__ iTable; } ;
struct TYPE_11__ {int nSrc; TYPE_2__* a; } ;
struct TYPE_9__ {scalar_t__ iCursor; } ;
typedef TYPE_4__ SrcList ;
typedef TYPE_5__ Expr ;


 scalar_t__ NEVER (int) ;
 scalar_t__ TK_AGG_COLUMN ;
 scalar_t__ TK_COLUMN ;
 int WRC_Continue ;

__attribute__((used)) static int exprSrcCount(Walker *pWalker, Expr *pExpr){





  if( pExpr->op==TK_COLUMN || NEVER(pExpr->op==TK_AGG_COLUMN) ){
    int i;
    struct SrcCount *p = pWalker->u.pSrcCount;
    SrcList *pSrc = p->pSrc;
    int nSrc = pSrc ? pSrc->nSrc : 0;
    for(i=0; i<nSrc; i++){
      if( pExpr->iTable==pSrc->a[i].iCursor ) break;
    }
    if( i<nSrc ){
      p->nThis++;
    }else if( nSrc==0 || pExpr->iTable<pSrc->a[0].iCursor ){



      p->nOther++;
    }
  }
  return WRC_Continue;
}
