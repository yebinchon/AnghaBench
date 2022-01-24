#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  opaque; int /*<<< orphan*/  (* customFree ) (int /*<<< orphan*/ ,TYPE_2__*) ;} ;
struct TYPE_8__ {TYPE_1__ customMem; struct TYPE_8__* outBuff; struct TYPE_8__* inBuff; int /*<<< orphan*/  zd; } ;
typedef  TYPE_2__ ZBUFFv07_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

size_t FUNC4(ZBUFFv07_DCtx* zbd)
{
    if (zbd==NULL) return 0;   /* support free on null */
    FUNC0(zbd->zd);
    if (zbd->inBuff) zbd->customMem.customFree(zbd->customMem.opaque, zbd->inBuff);
    if (zbd->outBuff) zbd->customMem.customFree(zbd->customMem.opaque, zbd->outBuff);
    zbd->customMem.customFree(zbd->customMem.opaque, zbd);
    return 0;
}