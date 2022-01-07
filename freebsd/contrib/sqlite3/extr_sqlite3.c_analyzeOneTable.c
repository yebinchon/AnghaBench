
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_6__ ;
typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_36__ {scalar_t__ xPreUpdateCallback; TYPE_1__* aDb; } ;
typedef TYPE_3__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_37__ {char* zName; int nCol; int iPKey; TYPE_2__* aCol; TYPE_6__* pIndex; int tnum; int pSchema; } ;
typedef TYPE_4__ Table ;
struct TYPE_39__ {scalar_t__ pPartIdxWhere; int nKeyCol; int nColumn; char* zName; int tnum; size_t* aiColumn; int pTable; int * azColl; int pSchema; scalar_t__ uniqNotNull; struct TYPE_39__* pNext; } ;
struct TYPE_38__ {void* nMem; void* nTab; int * pVdbe; TYPE_3__* db; } ;
struct TYPE_35__ {int zName; } ;
struct TYPE_34__ {int zDbSName; } ;
typedef TYPE_5__ Parse ;
typedef TYPE_6__ Index ;


 scalar_t__ HasRowid (TYPE_4__*) ;
 scalar_t__ IsPrimaryKeyIndex (TYPE_6__*) ;
 scalar_t__ IsStat4 ;
 scalar_t__ IsUniqueIndex (TYPE_6__*) ;
 void* MAX (void*,int) ;
 scalar_t__ NEVER (int) ;
 scalar_t__ OPFLAG_APPEND ;
 int OP_Column ;
 int OP_Count ;
 int OP_Function0 ;
 int OP_Goto ;
 int OP_IdxRowid ;
 int OP_IfNot ;
 int OP_Insert ;
 int OP_Integer ;
 int OP_IsNull ;
 int OP_MakeRecord ;
 int OP_Ne ;
 int OP_NewRowid ;
 int OP_Next ;
 int OP_Noop ;
 int OP_NotExists ;
 int OP_NotFound ;
 int OP_NotNull ;
 int OP_Null ;
 int OP_OpenRead ;
 int OP_Rewind ;
 int P4_COLLSEQ ;
 int P4_DYNBLOB ;
 int P4_FUNCDEF ;
 int P4_TABLE ;
 char SQLITE_AFF_TEXT ;
 int SQLITE_ANALYZE ;
 scalar_t__ SQLITE_NULLEQ ;
 int STAT_GET_NDLT ;
 int STAT_GET_NEQ ;
 int STAT_GET_NLT ;
 int STAT_GET_ROWID ;
 int STAT_GET_STAT1 ;
 int VdbeComment (int *) ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 int callStatGet (int *,int,int ,int) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ sqlite3AuthCheck (TYPE_5__*,int ,char*,int ,int ) ;
 int sqlite3BtreeHoldsAllMutexes (TYPE_3__*) ;
 int sqlite3ColumnOfIndex (TYPE_6__*,size_t) ;
 int sqlite3DbFree (TYPE_3__*,int*) ;
 int* sqlite3DbMallocRawNN (TYPE_3__*,int) ;
 scalar_t__ sqlite3DbMallocZero (TYPE_3__*,int) ;
 int sqlite3ExprCodeLoadIndexColumn (TYPE_5__*,TYPE_6__*,int,int,int) ;
 int sqlite3GetTempRange (TYPE_5__*,int) ;
 int * sqlite3GetVdbe (TYPE_5__*) ;
 scalar_t__ sqlite3LocateCollSeq (TYPE_5__*,int ) ;
 int sqlite3OpenTable (TYPE_5__*,int,int,TYPE_4__*,int ) ;
 TYPE_6__* sqlite3PrimaryKeyIndex (int ) ;
 int sqlite3ReleaseTempRange (TYPE_5__*,int,int) ;
 int sqlite3SchemaMutexHeld (TYPE_3__*,int,int ) ;
 int sqlite3SchemaToIndex (TYPE_3__*,int ) ;
 int sqlite3TableLock (TYPE_5__*,int,int ,int ,char*) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int,char*,int ) ;
 int sqlite3VdbeAddOp4Int (int *,int,int,int,int,int ) ;
 int sqlite3VdbeChangeP4 (int *,int,char*,int ) ;
 int sqlite3VdbeChangeP5 (int *,scalar_t__) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeGoto (int *,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeLoadString (int *,int,char const*) ;
 int sqlite3VdbeMakeLabel (TYPE_5__*) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int sqlite3VdbeSetP4KeyInfo (TYPE_5__*,TYPE_6__*) ;
 scalar_t__ sqlite3_strlike (char*,char*,char) ;
 int statInitFuncdef ;
 int statPushFuncdef ;

__attribute__((used)) static void analyzeOneTable(
  Parse *pParse,
  Table *pTab,
  Index *pOnlyIdx,
  int iStatCur,
  int iMem,
  int iTab
){
  sqlite3 *db = pParse->db;
  Index *pIdx;
  int iIdxCur;
  int iTabCur;
  Vdbe *v;
  int i;
  int jZeroRows = -1;
  int iDb;
  u8 needTableCnt = 1;
  int regNewRowid = iMem++;
  int regStat4 = iMem++;
  int regChng = iMem++;



  int regTemp = iMem++;
  int regTabname = iMem++;
  int regIdxname = iMem++;
  int regStat1 = iMem++;
  int regPrev = iMem;




  pParse->nMem = MAX(pParse->nMem, iMem);
  v = sqlite3GetVdbe(pParse);
  if( v==0 || NEVER(pTab==0) ){
    return;
  }
  if( pTab->tnum==0 ){

    return;
  }
  if( sqlite3_strlike("sqlite\\_%", pTab->zName, '\\')==0 ){

    return;
  }
  assert( sqlite3BtreeHoldsAllMutexes(db) );
  iDb = sqlite3SchemaToIndex(db, pTab->pSchema);
  assert( iDb>=0 );
  assert( sqlite3SchemaMutexHeld(db, iDb, 0) );

  if( sqlite3AuthCheck(pParse, SQLITE_ANALYZE, pTab->zName, 0,
      db->aDb[iDb].zDbSName ) ){
    return;
  }
  sqlite3TableLock(pParse, iDb, pTab->tnum, 0, pTab->zName);
  iTabCur = iTab++;
  iIdxCur = iTab++;
  pParse->nTab = MAX(pParse->nTab, iTab);
  sqlite3OpenTable(pParse, iTabCur, iDb, pTab, OP_OpenRead);
  sqlite3VdbeLoadString(v, regTabname, pTab->zName);

  for(pIdx=pTab->pIndex; pIdx; pIdx=pIdx->pNext){
    int nCol;
    int addrRewind;
    int addrNextRow;
    const char *zIdxName;
    int nColTest;

    if( pOnlyIdx && pOnlyIdx!=pIdx ) continue;
    if( pIdx->pPartIdxWhere==0 ) needTableCnt = 0;
    if( !HasRowid(pTab) && IsPrimaryKeyIndex(pIdx) ){
      nCol = pIdx->nKeyCol;
      zIdxName = pTab->zName;
      nColTest = nCol - 1;
    }else{
      nCol = pIdx->nColumn;
      zIdxName = pIdx->zName;
      nColTest = pIdx->uniqNotNull ? pIdx->nKeyCol-1 : nCol-1;
    }


    sqlite3VdbeLoadString(v, regIdxname, zIdxName);
    VdbeComment((v, "Analysis for %s.%s", pTab->zName, zIdxName));
    pParse->nMem = MAX(pParse->nMem, regPrev+nColTest);


    assert( iDb==sqlite3SchemaToIndex(db, pIdx->pSchema) );
    sqlite3VdbeAddOp3(v, OP_OpenRead, iIdxCur, pIdx->tnum, iDb);
    sqlite3VdbeSetP4KeyInfo(pParse, pIdx);
    VdbeComment((v, "%s", pIdx->zName));
    sqlite3VdbeAddOp2(v, OP_Integer, nCol, regStat4+1);
    sqlite3VdbeAddOp2(v, OP_Integer, pIdx->nKeyCol, regStat4+2);
    sqlite3VdbeAddOp4(v, OP_Function0, 0, regStat4+1, regStat4,
                     (char*)&statInitFuncdef, P4_FUNCDEF);
    sqlite3VdbeChangeP5(v, 2+IsStat4);
    addrRewind = sqlite3VdbeAddOp1(v, OP_Rewind, iIdxCur);
    VdbeCoverage(v);
    sqlite3VdbeAddOp2(v, OP_Integer, 0, regChng);
    addrNextRow = sqlite3VdbeCurrentAddr(v);

    if( nColTest>0 ){
      int endDistinctTest = sqlite3VdbeMakeLabel(pParse);
      int *aGotoChng;
      aGotoChng = sqlite3DbMallocRawNN(db, sizeof(int)*nColTest);
      if( aGotoChng==0 ) continue;
      sqlite3VdbeAddOp0(v, OP_Goto);
      addrNextRow = sqlite3VdbeCurrentAddr(v);
      if( nColTest==1 && pIdx->nKeyCol==1 && IsUniqueIndex(pIdx) ){



        sqlite3VdbeAddOp2(v, OP_NotNull, regPrev, endDistinctTest);
        VdbeCoverage(v);
      }
      for(i=0; i<nColTest; i++){
        char *pColl = (char*)sqlite3LocateCollSeq(pParse, pIdx->azColl[i]);
        sqlite3VdbeAddOp2(v, OP_Integer, i, regChng);
        sqlite3VdbeAddOp3(v, OP_Column, iIdxCur, i, regTemp);
        aGotoChng[i] =
        sqlite3VdbeAddOp4(v, OP_Ne, regTemp, 0, regPrev+i, pColl, P4_COLLSEQ);
        sqlite3VdbeChangeP5(v, SQLITE_NULLEQ);
        VdbeCoverage(v);
      }
      sqlite3VdbeAddOp2(v, OP_Integer, nColTest, regChng);
      sqlite3VdbeGoto(v, endDistinctTest);
      sqlite3VdbeJumpHere(v, addrNextRow-1);
      for(i=0; i<nColTest; i++){
        sqlite3VdbeJumpHere(v, aGotoChng[i]);
        sqlite3VdbeAddOp3(v, OP_Column, iIdxCur, i, regPrev+i);
      }
      sqlite3VdbeResolveLabel(v, endDistinctTest);
      sqlite3DbFree(db, aGotoChng);
    }
    assert( regChng==(regStat4+1) );
    sqlite3VdbeAddOp4(v, OP_Function0, 1, regStat4, regTemp,
                     (char*)&statPushFuncdef, P4_FUNCDEF);
    sqlite3VdbeChangeP5(v, 2+IsStat4);
    sqlite3VdbeAddOp2(v, OP_Next, iIdxCur, addrNextRow); VdbeCoverage(v);


    callStatGet(v, regStat4, STAT_GET_STAT1, regStat1);
    assert( "BBB"[0]==SQLITE_AFF_TEXT );
    sqlite3VdbeAddOp4(v, OP_MakeRecord, regTabname, 3, regTemp, "BBB", 0);
    sqlite3VdbeAddOp2(v, OP_NewRowid, iStatCur, regNewRowid);
    sqlite3VdbeAddOp3(v, OP_Insert, iStatCur, regTemp, regNewRowid);



    sqlite3VdbeChangeP5(v, OPFLAG_APPEND);
    sqlite3VdbeJumpHere(v, addrRewind);
  }





  if( pOnlyIdx==0 && needTableCnt ){
    VdbeComment((v, "%s", pTab->zName));
    sqlite3VdbeAddOp2(v, OP_Count, iTabCur, regStat1);
    jZeroRows = sqlite3VdbeAddOp1(v, OP_IfNot, regStat1); VdbeCoverage(v);
    sqlite3VdbeAddOp2(v, OP_Null, 0, regIdxname);
    assert( "BBB"[0]==SQLITE_AFF_TEXT );
    sqlite3VdbeAddOp4(v, OP_MakeRecord, regTabname, 3, regTemp, "BBB", 0);
    sqlite3VdbeAddOp2(v, OP_NewRowid, iStatCur, regNewRowid);
    sqlite3VdbeAddOp3(v, OP_Insert, iStatCur, regTemp, regNewRowid);
    sqlite3VdbeChangeP5(v, OPFLAG_APPEND);



    sqlite3VdbeJumpHere(v, jZeroRows);
  }
}
