#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  bucketOffsets; int /*<<< orphan*/  hashTable; } ;
struct TYPE_5__ {int /*<<< orphan*/  customMem; } ;
struct TYPE_7__ {TYPE_2__ ldmState; int /*<<< orphan*/  ldmWindowCond; int /*<<< orphan*/  ldmWindowMutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; TYPE_1__ params; } ;
typedef  TYPE_3__ serialState_t ;
typedef  int /*<<< orphan*/  ZSTD_customMem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(serialState_t* serialState)
{
    ZSTD_customMem cMem = serialState->params.customMem;
    FUNC2(&serialState->mutex);
    FUNC1(&serialState->cond);
    FUNC2(&serialState->ldmWindowMutex);
    FUNC1(&serialState->ldmWindowCond);
    FUNC0(serialState->ldmState.hashTable, cMem);
    FUNC0(serialState->ldmState.bucketOffsets, cMem);
}