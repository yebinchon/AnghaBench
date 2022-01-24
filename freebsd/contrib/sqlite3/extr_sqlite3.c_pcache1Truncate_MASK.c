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
typedef  int /*<<< orphan*/  sqlite3_pcache ;
struct TYPE_3__ {unsigned int iMaxKey; int /*<<< orphan*/  pGroup; } ;
typedef  TYPE_1__ PCache1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static void FUNC3(sqlite3_pcache *p, unsigned int iLimit){
  PCache1 *pCache = (PCache1 *)p;
  FUNC0(pCache->pGroup);
  if( iLimit<=pCache->iMaxKey ){
    FUNC2(pCache, iLimit);
    pCache->iMaxKey = iLimit-1;
  }
  FUNC1(pCache->pGroup);
}