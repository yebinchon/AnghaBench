
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int tabFlags; int nCol; } ;
typedef TYPE_3__ Table ;
struct TYPE_19__ {int mDbFlags; TYPE_2__* aDb; } ;
struct TYPE_18__ {int iDb; int regCtr; TYPE_3__* pTab; struct TYPE_18__* pNext; } ;
struct TYPE_17__ {int nMem; TYPE_5__* pAinc; TYPE_9__* db; int rc; int nErr; } ;
struct TYPE_15__ {TYPE_1__* pSchema; } ;
struct TYPE_14__ {TYPE_3__* pSeqTab; } ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ AutoincInfo ;


 int DBFLAG_Vacuum ;
 int HasRowid (TYPE_3__*) ;
 scalar_t__ IsVirtual (TYPE_3__*) ;
 int SQLITE_CORRUPT_SEQUENCE ;
 int TF_Autoincrement ;
 int assert (int) ;
 TYPE_5__* sqlite3DbMallocRawNN (TYPE_9__*,int) ;
 TYPE_4__* sqlite3ParseToplevel (TYPE_4__*) ;

__attribute__((used)) static int autoIncBegin(
  Parse *pParse,
  int iDb,
  Table *pTab
){
  int memId = 0;
  assert( pParse->db->aDb[iDb].pSchema!=0 );
  if( (pTab->tabFlags & TF_Autoincrement)!=0
   && (pParse->db->mDbFlags & DBFLAG_Vacuum)==0
  ){
    Parse *pToplevel = sqlite3ParseToplevel(pParse);
    AutoincInfo *pInfo;
    Table *pSeqTab = pParse->db->aDb[iDb].pSchema->pSeqTab;




    if( pSeqTab==0
     || !HasRowid(pSeqTab)
     || IsVirtual(pSeqTab)
     || pSeqTab->nCol!=2
    ){
      pParse->nErr++;
      pParse->rc = SQLITE_CORRUPT_SEQUENCE;
      return 0;
    }

    pInfo = pToplevel->pAinc;
    while( pInfo && pInfo->pTab!=pTab ){ pInfo = pInfo->pNext; }
    if( pInfo==0 ){
      pInfo = sqlite3DbMallocRawNN(pParse->db, sizeof(*pInfo));
      if( pInfo==0 ) return 0;
      pInfo->pNext = pToplevel->pAinc;
      pToplevel->pAinc = pInfo;
      pInfo->pTab = pTab;
      pInfo->iDb = iDb;
      pToplevel->nMem++;
      pInfo->regCtr = ++pToplevel->nMem;
      pToplevel->nMem +=2;
    }
    memId = pInfo->regCtr;
  }
  return memId;
}
