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
struct TYPE_5__ {int windowLog; } ;
struct TYPE_4__ {TYPE_2__ fParams; } ;
typedef  TYPE_1__ ZSTDv06_DCtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 size_t FUNC2 (TYPE_2__*,void const*,size_t) ; 
 int /*<<< orphan*/  frameParameter_unsupported ; 

__attribute__((used)) static size_t FUNC3(ZSTDv06_DCtx* zc, const void* src, size_t srcSize)
{
    size_t const result = FUNC2(&(zc->fParams), src, srcSize);
    if ((FUNC1()) && (zc->fParams.windowLog > 25)) return FUNC0(frameParameter_unsupported);
    return result;
}