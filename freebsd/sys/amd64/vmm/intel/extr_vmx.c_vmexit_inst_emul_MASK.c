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
typedef  void* uint64_t ;
typedef  void* uint32_t ;
struct vm_guest_paging {int cpu_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  vie; int /*<<< orphan*/  cs_d; void* cs_base; void* gla; void* gpa; struct vm_guest_paging paging; } ;
struct TYPE_4__ {TYPE_1__ inst_emul; } ;
struct vm_exit {TYPE_2__ u; scalar_t__ inst_length; int /*<<< orphan*/  exitcode; } ;

/* Variables and functions */
#define  CPU_MODE_COMPATIBILITY 130 
#define  CPU_MODE_PROTECTED 129 
#define  CPU_MODE_REAL 128 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  VMCS_GUEST_CS_ACCESS_RIGHTS ; 
 int /*<<< orphan*/  VMCS_GUEST_CS_BASE ; 
 int /*<<< orphan*/  VM_EXITCODE_INST_EMUL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_guest_paging*) ; 

__attribute__((used)) static void
FUNC4(struct vm_exit *vmexit, uint64_t gpa, uint64_t gla)
{
	struct vm_guest_paging *paging;
	uint32_t csar;

	paging = &vmexit->u.inst_emul.paging;

	vmexit->exitcode = VM_EXITCODE_INST_EMUL;
	vmexit->inst_length = 0;
	vmexit->u.inst_emul.gpa = gpa;
	vmexit->u.inst_emul.gla = gla;
	FUNC3(paging);
	switch (paging->cpu_mode) {
	case CPU_MODE_REAL:
		vmexit->u.inst_emul.cs_base = FUNC2(VMCS_GUEST_CS_BASE);
		vmexit->u.inst_emul.cs_d = 0;
		break;
	case CPU_MODE_PROTECTED:
	case CPU_MODE_COMPATIBILITY:
		vmexit->u.inst_emul.cs_base = FUNC2(VMCS_GUEST_CS_BASE);
		csar = FUNC2(VMCS_GUEST_CS_ACCESS_RIGHTS);
		vmexit->u.inst_emul.cs_d = FUNC0(csar);
		break;
	default:
		vmexit->u.inst_emul.cs_base = 0;
		vmexit->u.inst_emul.cs_d = 0;
		break;
	}
	FUNC1(&vmexit->u.inst_emul.vie, NULL, 0);
}