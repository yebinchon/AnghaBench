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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_9__ {scalar_t__* aReadMark; scalar_t__ nBackfillAttempted; scalar_t__ nBackfill; } ;
typedef  TYPE_2__ WalCkptInfo ;
struct TYPE_8__ {int /*<<< orphan*/ * aSalt; scalar_t__ mxFrame; } ;
struct TYPE_10__ {TYPE_1__ hdr; int /*<<< orphan*/  nCkpt; } ;
typedef  TYPE_3__ Wal ;

/* Variables and functions */
 scalar_t__ READMARK_NOT_USED ; 
 int WAL_NREADER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(Wal *pWal, u32 salt1){
  volatile WalCkptInfo *pInfo = FUNC4(pWal);
  int i;                          /* Loop counter */
  u32 *aSalt = pWal->hdr.aSalt;   /* Big-endian salt values */
  pWal->nCkpt++;
  pWal->hdr.mxFrame = 0;
  FUNC3((u8*)&aSalt[0], 1 + FUNC2((u8*)&aSalt[0]));
  FUNC1(&pWal->hdr.aSalt[1], &salt1, 4);
  FUNC5(pWal);
  pInfo->nBackfill = 0;
  pInfo->nBackfillAttempted = 0;
  pInfo->aReadMark[1] = 0;
  for(i=2; i<WAL_NREADER; i++) pInfo->aReadMark[i] = READMARK_NOT_USED;
  FUNC0( pInfo->aReadMark[0]==0 );
}