#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int iPage; int /*<<< orphan*/  pPage; int /*<<< orphan*/ * apPage; } ;
typedef  TYPE_1__ BtCursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(BtCursor *pCur){
  int i;
  if( pCur->iPage>=0 ){
    for(i=0; i<pCur->iPage; i++){
      FUNC0(pCur->apPage[i]);
    }
    FUNC0(pCur->pPage);
    pCur->iPage = -1;
  }
}