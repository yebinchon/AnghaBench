
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_27__ {scalar_t__ mallocFailed; TYPE_1__* aDb; } ;
typedef TYPE_2__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_28__ {int zName; int tnum; } ;
typedef TYPE_3__ Table ;
struct TYPE_30__ {int tnum; int nKeyCol; int bAscKeyBug; int zName; int pSchema; TYPE_3__* pTable; } ;
struct TYPE_29__ {int nTab; scalar_t__ nErr; TYPE_2__* db; } ;
struct TYPE_26__ {int zDbSName; } ;
typedef TYPE_4__ Parse ;
typedef int KeyInfo ;
typedef TYPE_5__ Index ;


 scalar_t__ IsUniqueIndex (TYPE_5__*) ;
 int OE_Abort ;
 int OPFLAG_BULKCSR ;
 int OPFLAG_P2ISREG ;
 int OPFLAG_USESEEKRESULT ;
 int OP_Clear ;
 int OP_Close ;
 int OP_IdxInsert ;
 int OP_Next ;
 int OP_OpenRead ;
 int OP_OpenWrite ;
 int OP_Rewind ;
 int OP_SeekEnd ;
 int OP_SorterCompare ;
 int OP_SorterData ;
 int OP_SorterInsert ;
 int OP_SorterNext ;
 int OP_SorterOpen ;
 int OP_SorterSort ;
 int P4_KEYINFO ;
 int SQLITE_REINDEX ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 scalar_t__ sqlite3AuthCheck (TYPE_4__*,int ,int ,int ,int ) ;
 int sqlite3GenerateIndexKey (TYPE_4__*,TYPE_5__*,int,int,int ,int*,int ,int ) ;
 int sqlite3GetTempReg (TYPE_4__*) ;
 int * sqlite3GetVdbe (TYPE_4__*) ;
 int * sqlite3KeyInfoOfIndex (TYPE_4__*,TYPE_5__*) ;
 scalar_t__ sqlite3KeyInfoRef (int *) ;
 int sqlite3MayAbort (TYPE_4__*) ;
 int sqlite3MultiWrite (TYPE_4__*) ;
 int sqlite3OpenTable (TYPE_4__*,int,int,TYPE_3__*,int ) ;
 int sqlite3ReleaseTempReg (TYPE_4__*,int) ;
 int sqlite3ResolvePartIdxLabel (TYPE_4__*,int) ;
 int sqlite3SchemaToIndex (TYPE_2__*,int ) ;
 int sqlite3TableLock (TYPE_4__*,int,int ,int,int ) ;
 int sqlite3UniqueConstraint (TYPE_4__*,int ,TYPE_5__*) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int,char*,int ) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,int,int,int) ;
 int sqlite3VdbeChangeP5 (int *,int) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeGoto (int *,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeVerifyAbortable (int *,int ) ;

__attribute__((used)) static void sqlite3RefillIndex(Parse *pParse, Index *pIndex, int memRootPage){
  Table *pTab = pIndex->pTable;
  int iTab = pParse->nTab++;
  int iIdx = pParse->nTab++;
  int iSorter;
  int addr1;
  int addr2;
  int tnum;
  int iPartIdxLabel;
  Vdbe *v;
  KeyInfo *pKey;
  int regRecord;
  sqlite3 *db = pParse->db;
  int iDb = sqlite3SchemaToIndex(db, pIndex->pSchema);


  if( sqlite3AuthCheck(pParse, SQLITE_REINDEX, pIndex->zName, 0,
      db->aDb[iDb].zDbSName ) ){
    return;
  }



  sqlite3TableLock(pParse, iDb, pTab->tnum, 1, pTab->zName);

  v = sqlite3GetVdbe(pParse);
  if( v==0 ) return;
  if( memRootPage>=0 ){
    tnum = memRootPage;
  }else{
    tnum = pIndex->tnum;
  }
  pKey = sqlite3KeyInfoOfIndex(pParse, pIndex);
  assert( pKey!=0 || db->mallocFailed || pParse->nErr );


  iSorter = pParse->nTab++;
  sqlite3VdbeAddOp4(v, OP_SorterOpen, iSorter, 0, pIndex->nKeyCol, (char*)
                    sqlite3KeyInfoRef(pKey), P4_KEYINFO);



  sqlite3OpenTable(pParse, iTab, iDb, pTab, OP_OpenRead);
  addr1 = sqlite3VdbeAddOp2(v, OP_Rewind, iTab, 0); VdbeCoverage(v);
  regRecord = sqlite3GetTempReg(pParse);
  sqlite3MultiWrite(pParse);

  sqlite3GenerateIndexKey(pParse,pIndex,iTab,regRecord,0,&iPartIdxLabel,0,0);
  sqlite3VdbeAddOp2(v, OP_SorterInsert, iSorter, regRecord);
  sqlite3ResolvePartIdxLabel(pParse, iPartIdxLabel);
  sqlite3VdbeAddOp2(v, OP_Next, iTab, addr1+1); VdbeCoverage(v);
  sqlite3VdbeJumpHere(v, addr1);
  if( memRootPage<0 ) sqlite3VdbeAddOp2(v, OP_Clear, tnum, iDb);
  sqlite3VdbeAddOp4(v, OP_OpenWrite, iIdx, tnum, iDb,
                    (char *)pKey, P4_KEYINFO);
  sqlite3VdbeChangeP5(v, OPFLAG_BULKCSR|((memRootPage>=0)?OPFLAG_P2ISREG:0));

  addr1 = sqlite3VdbeAddOp2(v, OP_SorterSort, iSorter, 0); VdbeCoverage(v);
  if( IsUniqueIndex(pIndex) ){
    int j2 = sqlite3VdbeGoto(v, 1);
    addr2 = sqlite3VdbeCurrentAddr(v);
    sqlite3VdbeVerifyAbortable(v, OE_Abort);
    sqlite3VdbeAddOp4Int(v, OP_SorterCompare, iSorter, j2, regRecord,
                         pIndex->nKeyCol); VdbeCoverage(v);
    sqlite3UniqueConstraint(pParse, OE_Abort, pIndex);
    sqlite3VdbeJumpHere(v, j2);
  }else{







    sqlite3MayAbort(pParse);
    addr2 = sqlite3VdbeCurrentAddr(v);
  }
  sqlite3VdbeAddOp3(v, OP_SorterData, iSorter, regRecord, iIdx);
  if( !pIndex->bAscKeyBug ){







    sqlite3VdbeAddOp1(v, OP_SeekEnd, iIdx);
  }
  sqlite3VdbeAddOp2(v, OP_IdxInsert, iIdx, regRecord);
  sqlite3VdbeChangeP5(v, OPFLAG_USESEEKRESULT);
  sqlite3ReleaseTempReg(pParse, regRecord);
  sqlite3VdbeAddOp2(v, OP_SorterNext, iSorter, addr2); VdbeCoverage(v);
  sqlite3VdbeJumpHere(v, addr1);

  sqlite3VdbeAddOp1(v, OP_Close, iTab);
  sqlite3VdbeAddOp1(v, OP_Close, iIdx);
  sqlite3VdbeAddOp1(v, OP_Close, iSorter);
}
