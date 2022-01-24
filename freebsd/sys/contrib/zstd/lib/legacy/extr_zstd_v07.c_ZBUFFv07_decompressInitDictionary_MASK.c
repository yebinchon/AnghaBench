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
struct TYPE_3__ {int /*<<< orphan*/  zd; scalar_t__ outEnd; scalar_t__ outStart; scalar_t__ inPos; scalar_t__ lhSize; int /*<<< orphan*/  stage; } ;
typedef  TYPE_1__ ZBUFFv07_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  ZBUFFds_loadHeader ; 
 size_t FUNC0 (int /*<<< orphan*/ ,void const*,size_t) ; 

size_t FUNC1(ZBUFFv07_DCtx* zbd, const void* dict, size_t dictSize)
{
    zbd->stage = ZBUFFds_loadHeader;
    zbd->lhSize = zbd->inPos = zbd->outStart = zbd->outEnd = 0;
    return FUNC0(zbd->zd, dict, dictSize);
}