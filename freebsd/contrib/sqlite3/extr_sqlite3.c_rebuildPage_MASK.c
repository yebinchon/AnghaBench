#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uptr ;
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
typedef  int u16 ;
struct TYPE_10__ {int* ixNx; int* szCell; int /*<<< orphan*/ ** apEnd; int /*<<< orphan*/ ** apCell; } ;
struct TYPE_9__ {int hdrOffset; int (* xCellSize ) (TYPE_2__*,int /*<<< orphan*/ *) ;int nCell; scalar_t__ nOverflow; TYPE_1__* pBt; int /*<<< orphan*/ * aCellIdx; int /*<<< orphan*/ * aData; } ;
struct TYPE_8__ {int usableSize; int /*<<< orphan*/  pPager; } ;
typedef  TYPE_2__ MemPage ;
typedef  TYPE_3__ CellArray ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ CORRUPT_DB ; 
 int NB ; 
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(
  CellArray *pCArray,             /* Content to be added to page pPg */
  int iFirst,                     /* First cell in pCArray to use */
  int nCell,                      /* Final number of cells on page */
  MemPage *pPg                    /* The page to be reconstructed */
){
  const int hdr = pPg->hdrOffset;          /* Offset of header on pPg */
  u8 * const aData = pPg->aData;           /* Pointer to data for pPg */
  const int usableSize = pPg->pBt->usableSize;
  u8 * const pEnd = &aData[usableSize];
  int i = iFirst;                 /* Which cell to copy from pCArray*/
  u32 j;                          /* Start of cell content area */
  int iEnd = i+nCell;             /* Loop terminator */
  u8 *pCellptr = pPg->aCellIdx;
  u8 *pTmp = FUNC6(pPg->pBt->pPager);
  u8 *pData;
  int k;                          /* Current slot in pCArray->apEnd[] */
  u8 *pSrcEnd;                    /* Current pCArray->apEnd[k] value */

  FUNC2( i<iEnd );
  j = FUNC3(&aData[hdr+5]);
  if( j>(u32)usableSize ){ j = 0; }
  FUNC4(&pTmp[j], &aData[j], usableSize - j);

  for(k=0; pCArray->ixNx[k]<=i && FUNC0(k<NB*2); k++){}
  pSrcEnd = pCArray->apEnd[k];

  pData = pEnd;
  while( 1/*exit by break*/ ){
    u8 *pCell = pCArray->apCell[i];
    u16 sz = pCArray->szCell[i];
    FUNC2( sz>0 );
    if( FUNC1(pCell,aData,pEnd) ){
      if( ((uptr)(pCell+sz))>(uptr)pEnd ) return SQLITE_CORRUPT_BKPT;
      pCell = &pTmp[pCell - aData];
    }else if( (uptr)(pCell+sz)>(uptr)pSrcEnd
           && (uptr)(pCell)<(uptr)pSrcEnd
    ){
      return SQLITE_CORRUPT_BKPT;
    }

    pData -= sz;
    FUNC5(pCellptr, (pData - aData));
    pCellptr += 2;
    if( pData < pCellptr ) return SQLITE_CORRUPT_BKPT;
    FUNC4(pData, pCell, sz);
    FUNC2( sz==pPg->xCellSize(pPg, pCell) || CORRUPT_DB );
    FUNC9( sz!=pPg->xCellSize(pPg,pCell) );
    i++;
    if( i>=iEnd ) break;
    if( pCArray->ixNx[k]<=i ){
      k++;
      pSrcEnd = pCArray->apEnd[k];
    }
  }

  /* The pPg->nFree field is now set incorrectly. The caller will fix it. */
  pPg->nCell = nCell;
  pPg->nOverflow = 0;

  FUNC5(&aData[hdr+1], 0);
  FUNC5(&aData[hdr+3], pPg->nCell);
  FUNC5(&aData[hdr+5], pData - aData);
  aData[hdr+7] = 0x00;
  return SQLITE_OK;
}