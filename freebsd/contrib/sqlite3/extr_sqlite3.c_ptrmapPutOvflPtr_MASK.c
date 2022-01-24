#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {scalar_t__ nLocal; scalar_t__ nPayload; int nSize; } ;
struct TYPE_7__ {int /*<<< orphan*/  pgno; int /*<<< orphan*/  pBt; int /*<<< orphan*/  aDataEnd; int /*<<< orphan*/  (* xParseCell ) (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*) ;} ;
typedef  int /*<<< orphan*/  Pgno ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ CellInfo ;

/* Variables and functions */
 int /*<<< orphan*/  PTRMAP_OVERFLOW1 ; 
 int SQLITE_CORRUPT_BKPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(MemPage *pPage, MemPage *pSrc, u8 *pCell,int *pRC){
  CellInfo info;
  if( *pRC ) return;
  FUNC1( pCell!=0 );
  pPage->xParseCell(pPage, pCell, &info);
  if( info.nLocal<info.nPayload ){
    Pgno ovfl;
    if( FUNC0(pSrc->aDataEnd, pCell, pCell+info.nLocal) ){
      FUNC5( pSrc!=pPage );
      *pRC = SQLITE_CORRUPT_BKPT;
      return;
    }
    ovfl = FUNC2(&pCell[info.nSize-4]);
    FUNC3(pPage->pBt, ovfl, PTRMAP_OVERFLOW1, pPage->pgno, pRC);
  }
}