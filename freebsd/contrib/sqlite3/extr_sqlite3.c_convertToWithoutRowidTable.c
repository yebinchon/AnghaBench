
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_27__ {scalar_t__ busy; int imposterTable; } ;
struct TYPE_28__ {TYPE_3__ init; scalar_t__ mallocFailed; } ;
typedef TYPE_4__ sqlite3 ;
typedef int Vdbe ;
typedef int Token ;
struct TYPE_29__ {int nCol; size_t iPKey; scalar_t__ tnum; TYPE_7__* pIndex; int keyConf; TYPE_1__* aCol; } ;
typedef TYPE_5__ Table ;
struct TYPE_32__ {TYPE_2__* a; } ;
struct TYPE_31__ {int nKeyCol; int nColumn; int* aiColumn; int isCovering; int uniqNotNull; scalar_t__ tnum; int bAscKeyBug; int * azColl; scalar_t__* aSortOrder; struct TYPE_31__* pNext; } ;
struct TYPE_30__ {scalar_t__ nErr; TYPE_5__* pNewTable; int iPkSortOrder; scalar_t__ addrCrTab; int * pVdbe; TYPE_4__* db; } ;
struct TYPE_26__ {int sortFlags; int pExpr; } ;
struct TYPE_25__ {int colFlags; int zName; int notNull; } ;
typedef TYPE_6__ Parse ;
typedef TYPE_7__ Index ;
typedef TYPE_8__ ExprList ;


 int BTREE_BLOBKEY ;
 int COLFLAG_PRIMKEY ;
 scalar_t__ IN_RENAME_OBJECT ;
 scalar_t__ IsPrimaryKeyIndex (TYPE_7__*) ;
 int OE_Abort ;
 int OP_Goto ;
 int SQLITE_IDXTYPE_PRIMARYKEY ;
 int TK_ID ;
 int assert (int) ;
 int hasColumn (int*,int,int) ;
 scalar_t__ isDupColumn (TYPE_7__*,int,TYPE_7__*,int) ;
 int recomputeColumnsNotIndexed (TYPE_7__*) ;
 scalar_t__ resizeIndexObject (TYPE_4__*,TYPE_7__*,int) ;
 int sqlite3CreateIndex (TYPE_6__*,int ,int ,int ,TYPE_8__*,int ,int ,int ,int ,int ,int ) ;
 int sqlite3ExprAlloc (TYPE_4__*,int ,int *,int ) ;
 TYPE_8__* sqlite3ExprListAppend (TYPE_6__*,int ,int ) ;
 TYPE_7__* sqlite3PrimaryKeyIndex (TYPE_5__*) ;
 int sqlite3RenameTokenRemap (TYPE_6__*,int ,size_t*) ;
 int sqlite3StrBINARY ;
 int sqlite3TokenInit (int *,int ) ;
 int sqlite3VdbeChangeOpcode (int *,scalar_t__,int ) ;
 int sqlite3VdbeChangeP3 (int *,scalar_t__,int ) ;
 int testcase (int ) ;

__attribute__((used)) static void convertToWithoutRowidTable(Parse *pParse, Table *pTab){
  Index *pIdx;
  Index *pPk;
  int nPk;
  int nExtra;
  int i, j;
  sqlite3 *db = pParse->db;
  Vdbe *v = pParse->pVdbe;



  if( !db->init.imposterTable ){
    for(i=0; i<pTab->nCol; i++){
      if( (pTab->aCol[i].colFlags & COLFLAG_PRIMKEY)!=0 ){
        pTab->aCol[i].notNull = OE_Abort;
      }
    }
  }




  if( pParse->addrCrTab ){
    assert( v );
    sqlite3VdbeChangeP3(v, pParse->addrCrTab, BTREE_BLOBKEY);
  }




  if( pTab->iPKey>=0 ){
    ExprList *pList;
    Token ipkToken;
    sqlite3TokenInit(&ipkToken, pTab->aCol[pTab->iPKey].zName);
    pList = sqlite3ExprListAppend(pParse, 0,
                  sqlite3ExprAlloc(db, TK_ID, &ipkToken, 0));
    if( pList==0 ) return;
    if( IN_RENAME_OBJECT ){
      sqlite3RenameTokenRemap(pParse, pList->a[0].pExpr, &pTab->iPKey);
    }
    pList->a[0].sortFlags = pParse->iPkSortOrder;
    assert( pParse->pNewTable==pTab );
    pTab->iPKey = -1;
    sqlite3CreateIndex(pParse, 0, 0, 0, pList, pTab->keyConf, 0, 0, 0, 0,
                       SQLITE_IDXTYPE_PRIMARYKEY);
    if( db->mallocFailed || pParse->nErr ) return;
    pPk = sqlite3PrimaryKeyIndex(pTab);
    assert( pPk->nKeyCol==1 );
  }else{
    pPk = sqlite3PrimaryKeyIndex(pTab);
    assert( pPk!=0 );






    for(i=j=1; i<pPk->nKeyCol; i++){
      if( isDupColumn(pPk, j, pPk, i) ){
        pPk->nColumn--;
      }else{
        testcase( hasColumn(pPk->aiColumn, j, pPk->aiColumn[i]) );
        pPk->azColl[j] = pPk->azColl[i];
        pPk->aSortOrder[j] = pPk->aSortOrder[i];
        pPk->aiColumn[j++] = pPk->aiColumn[i];
      }
    }
    pPk->nKeyCol = j;
  }
  assert( pPk!=0 );
  pPk->isCovering = 1;
  if( !db->init.imposterTable ) pPk->uniqNotNull = 1;
  nPk = pPk->nColumn = pPk->nKeyCol;





  if( v && pPk->tnum>0 ){
    assert( db->init.busy==0 );
    sqlite3VdbeChangeOpcode(v, pPk->tnum, OP_Goto);
  }


  pPk->tnum = pTab->tnum;




  for(pIdx=pTab->pIndex; pIdx; pIdx=pIdx->pNext){
    int n;
    if( IsPrimaryKeyIndex(pIdx) ) continue;
    for(i=n=0; i<nPk; i++){
      if( !isDupColumn(pIdx, pIdx->nKeyCol, pPk, i) ){
        testcase( hasColumn(pIdx->aiColumn, pIdx->nKeyCol, pPk->aiColumn[i]) );
        n++;
      }
    }
    if( n==0 ){

      pIdx->nColumn = pIdx->nKeyCol;
      continue;
    }
    if( resizeIndexObject(db, pIdx, pIdx->nKeyCol+n) ) return;
    for(i=0, j=pIdx->nKeyCol; i<nPk; i++){
      if( !isDupColumn(pIdx, pIdx->nKeyCol, pPk, i) ){
        testcase( hasColumn(pIdx->aiColumn, pIdx->nKeyCol, pPk->aiColumn[i]) );
        pIdx->aiColumn[j] = pPk->aiColumn[i];
        pIdx->azColl[j] = pPk->azColl[i];
        if( pPk->aSortOrder[i] ){

          pIdx->bAscKeyBug = 1;
        }
        j++;
      }
    }
    assert( pIdx->nColumn>=pIdx->nKeyCol+n );
    assert( pIdx->nColumn>=j );
  }



  nExtra = 0;
  for(i=0; i<pTab->nCol; i++){
    if( !hasColumn(pPk->aiColumn, nPk, i) ) nExtra++;
  }
  if( resizeIndexObject(db, pPk, nPk+nExtra) ) return;
  for(i=0, j=nPk; i<pTab->nCol; i++){
    if( !hasColumn(pPk->aiColumn, j, i) ){
      assert( j<pPk->nColumn );
      pPk->aiColumn[j] = i;
      pPk->azColl[j] = sqlite3StrBINARY;
      j++;
    }
  }
  assert( pPk->nColumn==j );
  assert( pTab->nCol<=j );
  recomputeColumnsNotIndexed(pPk);
}
