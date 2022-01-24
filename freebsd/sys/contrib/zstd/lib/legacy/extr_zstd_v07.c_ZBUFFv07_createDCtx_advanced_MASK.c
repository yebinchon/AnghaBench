#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  opaque; scalar_t__ (* customAlloc ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  customFree; } ;
typedef  TYPE_1__ ZSTDv07_customMem ;
struct TYPE_11__ {int /*<<< orphan*/  stage; int /*<<< orphan*/ * zd; int /*<<< orphan*/  customMem; } ;
typedef  TYPE_2__ ZBUFFv07_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  ZBUFFds_init ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__) ; 
 TYPE_1__ defaultCustomMem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 

ZBUFFv07_DCtx* FUNC5(ZSTDv07_customMem customMem)
{
    ZBUFFv07_DCtx* zbd;

    if (!customMem.customAlloc && !customMem.customFree)
        customMem = defaultCustomMem;

    if (!customMem.customAlloc || !customMem.customFree)
        return NULL;

    zbd = (ZBUFFv07_DCtx*)customMem.customAlloc(customMem.opaque, sizeof(ZBUFFv07_DCtx));
    if (zbd==NULL) return NULL;
    FUNC3(zbd, 0, sizeof(ZBUFFv07_DCtx));
    FUNC2(&zbd->customMem, &customMem, sizeof(ZSTDv07_customMem));
    zbd->zd = FUNC1(customMem);
    if (zbd->zd == NULL) { FUNC0(zbd); return NULL; }
    zbd->stage = ZBUFFds_init;
    return zbd;
}