#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ eLock; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 scalar_t__ EXCLUSIVE_LOCK ; 
 scalar_t__ SHARED_LOCK ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(Pager *pPager){
  int rc;                         /* Return code */

  FUNC0( pPager->eLock==SHARED_LOCK || pPager->eLock==EXCLUSIVE_LOCK );
  rc = FUNC1(pPager, EXCLUSIVE_LOCK);
  if( rc!=SQLITE_OK ){
    /* If the attempt to grab the exclusive lock failed, release the 
    ** pending lock that may have been obtained instead.  */
    FUNC2(pPager, SHARED_LOCK);
  }

  return rc;
}