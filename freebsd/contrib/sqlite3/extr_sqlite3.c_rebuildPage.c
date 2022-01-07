
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uptr ;
typedef int u8 ;
typedef size_t u32 ;
typedef int u16 ;
struct TYPE_10__ {int* ixNx; int* szCell; int ** apEnd; int ** apCell; } ;
struct TYPE_9__ {int hdrOffset; int (* xCellSize ) (TYPE_2__*,int *) ;int nCell; scalar_t__ nOverflow; TYPE_1__* pBt; int * aCellIdx; int * aData; } ;
struct TYPE_8__ {int usableSize; int pPager; } ;
typedef TYPE_2__ MemPage ;
typedef TYPE_3__ CellArray ;


 scalar_t__ ALWAYS (int) ;
 scalar_t__ CORRUPT_DB ;
 int NB ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_WITHIN (int *,int * const,int * const) ;
 int assert (int) ;
 size_t get2byte (int *) ;
 int memcpy (int *,int *,int const) ;
 int put2byte (int *,int) ;
 int * sqlite3PagerTempSpace (int ) ;
 int stub1 (TYPE_2__*,int *) ;
 int stub2 (TYPE_2__*,int *) ;
 int testcase (int) ;

__attribute__((used)) static int rebuildPage(
  CellArray *pCArray,
  int iFirst,
  int nCell,
  MemPage *pPg
){
  const int hdr = pPg->hdrOffset;
  u8 * const aData = pPg->aData;
  const int usableSize = pPg->pBt->usableSize;
  u8 * const pEnd = &aData[usableSize];
  int i = iFirst;
  u32 j;
  int iEnd = i+nCell;
  u8 *pCellptr = pPg->aCellIdx;
  u8 *pTmp = sqlite3PagerTempSpace(pPg->pBt->pPager);
  u8 *pData;
  int k;
  u8 *pSrcEnd;

  assert( i<iEnd );
  j = get2byte(&aData[hdr+5]);
  if( j>(u32)usableSize ){ j = 0; }
  memcpy(&pTmp[j], &aData[j], usableSize - j);

  for(k=0; pCArray->ixNx[k]<=i && ALWAYS(k<NB*2); k++){}
  pSrcEnd = pCArray->apEnd[k];

  pData = pEnd;
  while( 1 ){
    u8 *pCell = pCArray->apCell[i];
    u16 sz = pCArray->szCell[i];
    assert( sz>0 );
    if( SQLITE_WITHIN(pCell,aData,pEnd) ){
      if( ((uptr)(pCell+sz))>(uptr)pEnd ) return SQLITE_CORRUPT_BKPT;
      pCell = &pTmp[pCell - aData];
    }else if( (uptr)(pCell+sz)>(uptr)pSrcEnd
           && (uptr)(pCell)<(uptr)pSrcEnd
    ){
      return SQLITE_CORRUPT_BKPT;
    }

    pData -= sz;
    put2byte(pCellptr, (pData - aData));
    pCellptr += 2;
    if( pData < pCellptr ) return SQLITE_CORRUPT_BKPT;
    memcpy(pData, pCell, sz);
    assert( sz==pPg->xCellSize(pPg, pCell) || CORRUPT_DB );
    testcase( sz!=pPg->xCellSize(pPg,pCell) );
    i++;
    if( i>=iEnd ) break;
    if( pCArray->ixNx[k]<=i ){
      k++;
      pSrcEnd = pCArray->apEnd[k];
    }
  }


  pPg->nCell = nCell;
  pPg->nOverflow = 0;

  put2byte(&aData[hdr+1], 0);
  put2byte(&aData[hdr+3], pPg->nCell);
  put2byte(&aData[hdr+5], pData - aData);
  aData[hdr+7] = 0x00;
  return SQLITE_OK;
}
