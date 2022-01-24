#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ here; } ;
struct TYPE_8__ {int size; } ;
typedef  int /*<<< orphan*/  FICL_WORD ;
typedef  TYPE_1__ FICL_HASH ;
typedef  TYPE_2__ FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

FICL_HASH *FUNC3(FICL_DICT *dp, int nBuckets)
{
    FICL_HASH *pHash;
    
    FUNC0(dp);
    pHash    = (FICL_HASH *)dp->here;
    FUNC1(dp, sizeof (FICL_HASH) 
        + (nBuckets-1) * sizeof (FICL_WORD *));

    pHash->size = nBuckets;
    FUNC2(pHash);
    return pHash;
}