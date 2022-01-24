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
struct TYPE_3__ {int dtdt_flags; scalar_t__ dtdt_kind; int /*<<< orphan*/  dtdt_size; } ;
typedef  TYPE_1__ dtrace_diftype_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DIF_TF_BYREF ; 
 scalar_t__ DIF_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *src, void *dst, dtrace_diftype_t *type, size_t limit)
{
	FUNC0(type->dtdt_flags & DIF_TF_BYREF);

	if (type->dtdt_kind == DIF_TYPE_STRING) {
		FUNC3(src, dst, FUNC1(type->dtdt_size, limit));
	} else {
		FUNC2(src, dst, FUNC1(type->dtdt_size, limit));
	}
}