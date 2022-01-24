#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  stage; int /*<<< orphan*/  zd; } ;
typedef  TYPE_1__ ZBUFFv06_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  ZBUFFds_init ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

ZBUFFv06_DCtx* FUNC3(void)
{
    ZBUFFv06_DCtx* zbd = (ZBUFFv06_DCtx*)FUNC1(sizeof(ZBUFFv06_DCtx));
    if (zbd==NULL) return NULL;
    FUNC2(zbd, 0, sizeof(*zbd));
    zbd->zd = FUNC0();
    zbd->stage = ZBUFFds_init;
    return zbd;
}