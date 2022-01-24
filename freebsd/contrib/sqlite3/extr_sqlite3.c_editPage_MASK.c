#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_18__ {int /*<<< orphan*/  (* xCellSize ) (TYPE_4__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_17__ {int /*<<< orphan*/ ** apCell; TYPE_4__* pRef; } ;
struct TYPE_16__ {int hdrOffset; int nCell; int nOverflow; int* aiOvfl; TYPE_1__* pBt; int /*<<< orphan*/ * aCellIdx; int /*<<< orphan*/ * aData; } ;
struct TYPE_15__ {size_t usableSize; int /*<<< orphan*/  pPager; } ;
typedef  TYPE_2__ MemPage ;
typedef  TYPE_3__ CellArray ;

/* Variables and functions */
 scalar_t__ CORRUPT_DB ; 
 int FUNC0 (int,int) ; 
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (TYPE_2__*,int,int,TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (TYPE_3__*,int,int,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(
  MemPage *pPg,                   /* Edit this page */
  int iOld,                       /* Index of first cell currently on page */
  int iNew,                       /* Index of new first cell on page */
  int nNew,                       /* Final number of cells on page */
  CellArray *pCArray              /* Array of cells and sizes */
){
  u8 * const aData = pPg->aData;
  const int hdr = pPg->hdrOffset;
  u8 *pBegin = &pPg->aCellIdx[nNew * 2];
  int nCell = pPg->nCell;       /* Cells stored on pPg */
  u8 *pData;
  u8 *pCellptr;
  int i;
  int iOldEnd = iOld + pPg->nCell + pPg->nOverflow;
  int iNewEnd = iNew + nNew;

#ifdef SQLITE_DEBUG
  u8 *pTmp = sqlite3PagerTempSpace(pPg->pBt->pPager);
  memcpy(pTmp, aData, pPg->pBt->usableSize);
#endif

  /* Remove cells from the start and end of the page */
  FUNC2( nCell>=0 );
  if( iOld<iNew ){
    int nShift = FUNC9(pPg, iOld, iNew-iOld, pCArray);
    if( nShift>nCell ) return SQLITE_CORRUPT_BKPT;
    FUNC8(pPg->aCellIdx, &pPg->aCellIdx[nShift*2], nCell*2);
    nCell -= nShift;
  }
  if( iNewEnd < iOldEnd ){
    int nTail = FUNC9(pPg, iNewEnd, iOldEnd - iNewEnd, pCArray);
    FUNC2( nCell>=nTail );
    nCell -= nTail;
  }

  pData = &aData[FUNC5(&aData[hdr+5])];
  if( pData<pBegin ) goto editpage_fail;

  /* Add cells to the start of the page */
  if( iNew<iOld ){
    int nAdd = FUNC0(nNew,iOld-iNew);
    FUNC2( (iOld-iNew)<nNew || nCell==0 || CORRUPT_DB );
    FUNC2( nAdd>=0 );
    pCellptr = pPg->aCellIdx;
    FUNC8(&pCellptr[nAdd*2], pCellptr, nCell*2);
    if( FUNC10(
          pPg, pBegin, &pData, pCellptr,
          iNew, nAdd, pCArray
    ) ) goto editpage_fail;
    nCell += nAdd;
  }

  /* Add any overflow cells */
  for(i=0; i<pPg->nOverflow; i++){
    int iCell = (iOld + pPg->aiOvfl[i]) - iNew;
    if( iCell>=0 && iCell<nNew ){
      pCellptr = &pPg->aCellIdx[iCell * 2];
      if( nCell>iCell ){
        FUNC8(&pCellptr[2], pCellptr, (nCell - iCell) * 2);
      }
      nCell++;
      FUNC3(pCArray, iCell+iNew);
      if( FUNC10(
            pPg, pBegin, &pData, pCellptr,
            iCell+iNew, 1, pCArray
      ) ) goto editpage_fail;
    }
  }

  /* Append cells to the end of the page */
  FUNC2( nCell>=0 );
  pCellptr = &pPg->aCellIdx[nCell*2];
  if( FUNC10(
        pPg, pBegin, &pData, pCellptr,
        iNew+nCell, nNew-nCell, pCArray
  ) ) goto editpage_fail;

  pPg->nCell = nNew;
  pPg->nOverflow = 0;

  FUNC12(&aData[hdr+3], pPg->nCell);
  FUNC12(&aData[hdr+5], pData - aData);

#ifdef SQLITE_DEBUG
  for(i=0; i<nNew && !CORRUPT_DB; i++){
    u8 *pCell = pCArray->apCell[i+iNew];
    int iOff = get2byteAligned(&pPg->aCellIdx[i*2]);
    if( SQLITE_WITHIN(pCell, aData, &aData[pPg->pBt->usableSize]) ){
      pCell = &pTmp[pCell - aData];
    }
    assert( 0==memcmp(pCell, &aData[iOff],
            pCArray->pRef->xCellSize(pCArray->pRef, pCArray->apCell[i+iNew])) );
  }
#endif

  return SQLITE_OK;
 editpage_fail:
  /* Unable to edit this page. Rebuild it from scratch instead. */
  FUNC11(pCArray, iNew, nNew);
  return FUNC13(pCArray, iNew, nNew, pPg);
}