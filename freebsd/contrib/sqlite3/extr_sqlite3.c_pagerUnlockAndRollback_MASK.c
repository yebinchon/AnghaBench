#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ eState; int /*<<< orphan*/  exclusiveMode; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 scalar_t__ PAGER_ERROR ; 
 scalar_t__ PAGER_OPEN ; 
 scalar_t__ PAGER_READER ; 
 scalar_t__ PAGER_WRITER_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(Pager *pPager){
  if( pPager->eState!=PAGER_ERROR && pPager->eState!=PAGER_OPEN ){
    FUNC0( FUNC1(pPager) );
    if( pPager->eState>=PAGER_WRITER_LOCKED ){
      FUNC4();
      FUNC6(pPager);
      FUNC5();
    }else if( !pPager->exclusiveMode ){
      FUNC0( pPager->eState==PAGER_READER );
      FUNC2(pPager, 0, 0);
    }
  }
  FUNC3(pPager);
}