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
struct TYPE_4__ {int /*<<< orphan*/  customMem; int /*<<< orphan*/  zbc; } ;
typedef  TYPE_1__ ZWRAP_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC2(ZWRAP_CCtx* zwc)
{
    if (zwc==NULL) return 0;   /* support free on NULL */
    FUNC1(zwc->zbc);
    FUNC0(zwc, zwc->customMem);
    return 0;
}