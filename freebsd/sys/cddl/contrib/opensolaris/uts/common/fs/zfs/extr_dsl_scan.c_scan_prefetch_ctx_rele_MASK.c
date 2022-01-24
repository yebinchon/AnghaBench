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
struct TYPE_4__ {int /*<<< orphan*/  spc_refcnt; } ;
typedef  TYPE_1__ scan_prefetch_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static void
FUNC3(scan_prefetch_ctx_t *spc, void *tag)
{
	if (FUNC2(&spc->spc_refcnt, tag) == 0) {
		FUNC1(&spc->spc_refcnt);
		FUNC0(spc, sizeof (scan_prefetch_ctx_t));
	}
}