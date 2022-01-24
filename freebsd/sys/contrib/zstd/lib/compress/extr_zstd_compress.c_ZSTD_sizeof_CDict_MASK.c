#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__ const* workspace; } ;
struct TYPE_4__ {TYPE_3__ workspace; } ;
typedef  TYPE_1__ ZSTD_CDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 size_t FUNC1 (TYPE_3__*) ; 

size_t FUNC2(const ZSTD_CDict* cdict)
{
    if (cdict==NULL) return 0;   /* support sizeof on NULL */
    FUNC0(5, "sizeof(*cdict) : %u", (unsigned)sizeof(*cdict));
    /* cdict may be in the workspace */
    return (cdict->workspace.workspace == cdict ? 0 : sizeof(*cdict))
        + FUNC1(&cdict->workspace);
}