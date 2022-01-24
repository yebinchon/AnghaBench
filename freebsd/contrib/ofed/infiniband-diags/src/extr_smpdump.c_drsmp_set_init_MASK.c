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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
struct drsmp {int method; int dr_slid; int dr_dlid; scalar_t__ hop_cnt; int /*<<< orphan*/  data; int /*<<< orphan*/  initial_path; int /*<<< orphan*/  tid; int /*<<< orphan*/  attr_mod; scalar_t__ attr_id; } ;
struct TYPE_3__ {void* path; int hop_cnt; } ;
typedef  TYPE_1__ DRPath ;

/* Variables and functions */
 int /*<<< orphan*/  drmad_tid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drsmp*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(void *umad, DRPath * path, int attr, int mod, void *data)
{
	struct drsmp *smp = (struct drsmp *)(FUNC5(umad));

	FUNC4(smp, 0, sizeof(*smp));

	smp->method = 2;	/* SET */
	smp->attr_id = (uint16_t) FUNC2((uint16_t) attr);
	smp->attr_mod = FUNC0(mod);
	smp->tid = FUNC1(drmad_tid++);
	smp->dr_slid = 0xffff;
	smp->dr_dlid = 0xffff;

	FUNC6(umad, 0xffff, 0, 0, 0);

	if (path)
		FUNC3(smp->initial_path, path->path, path->hop_cnt + 1);

	if (data)
		FUNC3(smp->data, data, sizeof smp->data);

	smp->hop_cnt = (uint8_t) path->hop_cnt;
}