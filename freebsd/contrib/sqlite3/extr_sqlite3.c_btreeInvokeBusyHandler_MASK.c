#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  busyHandler; int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  pPager; TYPE_2__* db; } ;
typedef  TYPE_1__ BtShared ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *pArg){
  BtShared *pBt = (BtShared*)pArg;
  FUNC0( pBt->db );
  FUNC0( FUNC3(pBt->db->mutex) );
  return FUNC1(&pBt->db->busyHandler,
                                  FUNC2(pBt->pPager));
}