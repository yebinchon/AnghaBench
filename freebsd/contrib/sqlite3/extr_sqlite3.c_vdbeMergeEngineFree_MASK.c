#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nTree; int /*<<< orphan*/ * aReadr; } ;
typedef  TYPE_1__ MergeEngine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(MergeEngine *pMerger){
  int i;
  if( pMerger ){
    for(i=0; i<pMerger->nTree; i++){
      FUNC1(&pMerger->aReadr[i]);
    }
  }
  FUNC0(pMerger);
}