
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_70__ TYPE_9__ ;
typedef struct TYPE_69__ TYPE_8__ ;
typedef struct TYPE_68__ TYPE_7__ ;
typedef struct TYPE_67__ TYPE_6__ ;
typedef struct TYPE_66__ TYPE_5__ ;
typedef struct TYPE_65__ TYPE_4__ ;
typedef struct TYPE_64__ TYPE_3__ ;
typedef struct TYPE_63__ TYPE_2__ ;
typedef struct TYPE_62__ TYPE_1__ ;
typedef struct TYPE_61__ TYPE_14__ ;
typedef struct TYPE_60__ TYPE_13__ ;
typedef struct TYPE_59__ TYPE_12__ ;
typedef struct TYPE_58__ TYPE_11__ ;
typedef struct TYPE_57__ TYPE_10__ ;


struct TYPE_62__ {int bDisable; } ;
struct TYPE_67__ {int flags; int mallocFailed; TYPE_1__ lookaside; } ;
typedef TYPE_6__ sqlite3 ;
struct TYPE_68__ {char* zTarget; TYPE_8__* pTrig; void* op; int pSelect; int pExprList; void* pWhere; } ;
typedef TYPE_7__ TriggerStep ;
struct TYPE_69__ {void* op; int pTabSchema; int pSchema; void* pWhen; TYPE_7__* step_list; } ;
typedef TYPE_8__ Trigger ;
struct TYPE_70__ {char* member_0; int member_1; char const* z; int n; } ;
typedef TYPE_9__ Token ;
struct TYPE_57__ {size_t iPKey; size_t nCol; int pSchema; TYPE_3__* aCol; } ;
typedef TYPE_10__ Table ;
struct TYPE_66__ {char* zName; TYPE_4__* aCol; } ;
struct TYPE_65__ {TYPE_14__* pDflt; int zName; } ;
struct TYPE_64__ {int zName; } ;
struct TYPE_63__ {int iFrom; } ;
struct TYPE_61__ {int affExpr; } ;
struct TYPE_60__ {int* aAction; int nCol; TYPE_8__** apTrigger; TYPE_5__* pFrom; TYPE_2__* aCol; } ;
struct TYPE_59__ {size_t* aiColumn; } ;
struct TYPE_58__ {TYPE_6__* db; } ;
typedef int Select ;
typedef TYPE_11__ Parse ;
typedef TYPE_12__ Index ;
typedef TYPE_13__ FKey ;
typedef int ExprList ;
typedef TYPE_14__ Expr ;


 int EXPRDUP_REDUCE ;
 int OE_Abort ;

 int OE_None ;

 int OE_SetDflt ;
 int SQLITE_DeferFKs ;
 void* TK_DELETE ;
 int TK_DOT ;
 int TK_EQ ;
 int TK_ID ;
 int TK_IS ;
 int TK_NOT ;
 int TK_NULL ;
 int TK_RAISE ;
 void* TK_SELECT ;
 void* TK_UPDATE ;
 int assert (int) ;
 int fkTriggerDelete (TYPE_6__*,TYPE_8__*) ;
 int memcpy (char*,char const*,int) ;
 int sqlite3DbFree (TYPE_6__*,int*) ;
 scalar_t__ sqlite3DbMallocZero (TYPE_6__*,int) ;
 TYPE_14__* sqlite3Expr (TYPE_6__*,int ,char*) ;
 TYPE_14__* sqlite3ExprAlloc (TYPE_6__*,int ,TYPE_9__*,int ) ;
 TYPE_14__* sqlite3ExprAnd (TYPE_11__*,TYPE_14__*,TYPE_14__*) ;
 int sqlite3ExprDelete (TYPE_6__*,TYPE_14__*) ;
 void* sqlite3ExprDup (TYPE_6__*,TYPE_14__*,int ) ;
 int * sqlite3ExprListAppend (TYPE_11__*,int *,TYPE_14__*) ;
 int sqlite3ExprListDelete (TYPE_6__*,int *) ;
 int sqlite3ExprListDup (TYPE_6__*,int *,int ) ;
 int sqlite3ExprListSetName (TYPE_11__*,int *,TYPE_9__*,int ) ;
 scalar_t__ sqlite3FkLocateIndex (TYPE_11__*,TYPE_10__*,TYPE_13__*,TYPE_12__**,int**) ;
 TYPE_14__* sqlite3PExpr (TYPE_11__*,int ,TYPE_14__*,TYPE_14__*) ;
 int sqlite3SelectDelete (TYPE_6__*,int *) ;
 int sqlite3SelectDup (TYPE_6__*,int *,int ) ;
 int * sqlite3SelectNew (TYPE_11__*,int *,int ,TYPE_14__*,int ,int ,int ,int ,int ) ;
 int sqlite3SrcListAppend (TYPE_11__*,int ,TYPE_9__*,int ) ;
 int sqlite3Strlen30 (char const*) ;
 int sqlite3TokenInit (TYPE_9__*,int ) ;

__attribute__((used)) static Trigger *fkActionTrigger(
  Parse *pParse,
  Table *pTab,
  FKey *pFKey,
  ExprList *pChanges
){
  sqlite3 *db = pParse->db;
  int action;
  Trigger *pTrigger;
  int iAction = (pChanges!=0);

  action = pFKey->aAction[iAction];
  if( action==128 && (db->flags & SQLITE_DeferFKs) ){
    return 0;
  }
  pTrigger = pFKey->apTrigger[iAction];

  if( action!=OE_None && !pTrigger ){
    char const *zFrom;
    int nFrom;
    Index *pIdx = 0;
    int *aiCol = 0;
    TriggerStep *pStep = 0;
    Expr *pWhere = 0;
    ExprList *pList = 0;
    Select *pSelect = 0;
    int i;
    Expr *pWhen = 0;

    if( sqlite3FkLocateIndex(pParse, pTab, pFKey, &pIdx, &aiCol) ) return 0;
    assert( aiCol || pFKey->nCol==1 );

    for(i=0; i<pFKey->nCol; i++){
      Token tOld = { "old", 3 };
      Token tNew = { "new", 3 };
      Token tFromCol;
      Token tToCol;
      int iFromCol;
      Expr *pEq;

      iFromCol = aiCol ? aiCol[i] : pFKey->aCol[0].iFrom;
      assert( iFromCol>=0 );
      assert( pIdx!=0 || (pTab->iPKey>=0 && pTab->iPKey<pTab->nCol) );
      assert( pIdx==0 || pIdx->aiColumn[i]>=0 );
      sqlite3TokenInit(&tToCol,
                   pTab->aCol[pIdx ? pIdx->aiColumn[i] : pTab->iPKey].zName);
      sqlite3TokenInit(&tFromCol, pFKey->pFrom->aCol[iFromCol].zName);





      pEq = sqlite3PExpr(pParse, TK_EQ,
          sqlite3PExpr(pParse, TK_DOT,
            sqlite3ExprAlloc(db, TK_ID, &tOld, 0),
            sqlite3ExprAlloc(db, TK_ID, &tToCol, 0)),
          sqlite3ExprAlloc(db, TK_ID, &tFromCol, 0)
      );
      pWhere = sqlite3ExprAnd(pParse, pWhere, pEq);






      if( pChanges ){
        pEq = sqlite3PExpr(pParse, TK_IS,
            sqlite3PExpr(pParse, TK_DOT,
              sqlite3ExprAlloc(db, TK_ID, &tOld, 0),
              sqlite3ExprAlloc(db, TK_ID, &tToCol, 0)),
            sqlite3PExpr(pParse, TK_DOT,
              sqlite3ExprAlloc(db, TK_ID, &tNew, 0),
              sqlite3ExprAlloc(db, TK_ID, &tToCol, 0))
            );
        pWhen = sqlite3ExprAnd(pParse, pWhen, pEq);
      }

      if( action!=128 && (action!=129 || pChanges) ){
        Expr *pNew;
        if( action==129 ){
          pNew = sqlite3PExpr(pParse, TK_DOT,
            sqlite3ExprAlloc(db, TK_ID, &tNew, 0),
            sqlite3ExprAlloc(db, TK_ID, &tToCol, 0));
        }else if( action==OE_SetDflt ){
          Expr *pDflt = pFKey->pFrom->aCol[iFromCol].pDflt;
          if( pDflt ){
            pNew = sqlite3ExprDup(db, pDflt, 0);
          }else{
            pNew = sqlite3ExprAlloc(db, TK_NULL, 0, 0);
          }
        }else{
          pNew = sqlite3ExprAlloc(db, TK_NULL, 0, 0);
        }
        pList = sqlite3ExprListAppend(pParse, pList, pNew);
        sqlite3ExprListSetName(pParse, pList, &tFromCol, 0);
      }
    }
    sqlite3DbFree(db, aiCol);

    zFrom = pFKey->pFrom->zName;
    nFrom = sqlite3Strlen30(zFrom);

    if( action==128 ){
      Token tFrom;
      Expr *pRaise;

      tFrom.z = zFrom;
      tFrom.n = nFrom;
      pRaise = sqlite3Expr(db, TK_RAISE, "FOREIGN KEY constraint failed");
      if( pRaise ){
        pRaise->affExpr = OE_Abort;
      }
      pSelect = sqlite3SelectNew(pParse,
          sqlite3ExprListAppend(pParse, 0, pRaise),
          sqlite3SrcListAppend(pParse, 0, &tFrom, 0),
          pWhere,
          0, 0, 0, 0, 0
      );
      pWhere = 0;
    }


    db->lookaside.bDisable++;

    pTrigger = (Trigger *)sqlite3DbMallocZero(db,
        sizeof(Trigger) +
        sizeof(TriggerStep) +
        nFrom + 1
    );
    if( pTrigger ){
      pStep = pTrigger->step_list = (TriggerStep *)&pTrigger[1];
      pStep->zTarget = (char *)&pStep[1];
      memcpy((char *)pStep->zTarget, zFrom, nFrom);

      pStep->pWhere = sqlite3ExprDup(db, pWhere, EXPRDUP_REDUCE);
      pStep->pExprList = sqlite3ExprListDup(db, pList, EXPRDUP_REDUCE);
      pStep->pSelect = sqlite3SelectDup(db, pSelect, EXPRDUP_REDUCE);
      if( pWhen ){
        pWhen = sqlite3PExpr(pParse, TK_NOT, pWhen, 0);
        pTrigger->pWhen = sqlite3ExprDup(db, pWhen, EXPRDUP_REDUCE);
      }
    }


    db->lookaside.bDisable--;

    sqlite3ExprDelete(db, pWhere);
    sqlite3ExprDelete(db, pWhen);
    sqlite3ExprListDelete(db, pList);
    sqlite3SelectDelete(db, pSelect);
    if( db->mallocFailed==1 ){
      fkTriggerDelete(db, pTrigger);
      return 0;
    }
    assert( pStep!=0 );
    assert( pTrigger!=0 );

    switch( action ){
      case 128:
        pStep->op = TK_SELECT;
        break;
      case 129:
        if( !pChanges ){
          pStep->op = TK_DELETE;
          break;
        }
      default:
        pStep->op = TK_UPDATE;
    }
    pStep->pTrig = pTrigger;
    pTrigger->pSchema = pTab->pSchema;
    pTrigger->pTabSchema = pTab->pSchema;
    pFKey->apTrigger[iAction] = pTrigger;
    pTrigger->op = (pChanges ? TK_UPDATE : TK_DELETE);
  }

  return pTrigger;
}
