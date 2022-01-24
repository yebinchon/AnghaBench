#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ window_size; int /*<<< orphan*/  rd; int /*<<< orphan*/  ldd; int /*<<< orphan*/  dd; int /*<<< orphan*/  ld; int /*<<< orphan*/  bd; scalar_t__ last_write_ptr; scalar_t__ write_ptr; int /*<<< orphan*/ * filtered_buf; int /*<<< orphan*/ * window_buf; } ;
struct TYPE_3__ {scalar_t__ calculated_crc32; } ;
struct rar5 {TYPE_2__ cstate; TYPE_1__ file; } ;

/* Variables and functions */
 void* FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rar5*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct rar5* rar) {
	rar->file.calculated_crc32 = 0;
	FUNC2(rar);

	FUNC1(rar->cstate.window_buf);
	FUNC1(rar->cstate.filtered_buf);

	if(rar->cstate.window_size > 0) {
		rar->cstate.window_buf = FUNC0(1, rar->cstate.window_size);
		rar->cstate.filtered_buf = FUNC0(1, rar->cstate.window_size);
	} else {
		rar->cstate.window_buf = NULL;
		rar->cstate.filtered_buf = NULL;
	}

	rar->cstate.write_ptr = 0;
	rar->cstate.last_write_ptr = 0;

	FUNC3(&rar->cstate.bd, 0, sizeof(rar->cstate.bd));
	FUNC3(&rar->cstate.ld, 0, sizeof(rar->cstate.ld));
	FUNC3(&rar->cstate.dd, 0, sizeof(rar->cstate.dd));
	FUNC3(&rar->cstate.ldd, 0, sizeof(rar->cstate.ldd));
	FUNC3(&rar->cstate.rd, 0, sizeof(rar->cstate.rd));
}