#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  dtpd_name; int /*<<< orphan*/  dtpd_func; int /*<<< orphan*/  dtpd_mod; int /*<<< orphan*/  dtpd_provider; } ;
typedef  TYPE_1__ dtrace_probedesc_t ;
typedef  int /*<<< orphan*/  dof_secidx_t ;
struct TYPE_13__ {scalar_t__ dofs_type; int dofs_align; scalar_t__ dofs_offset; size_t dofs_size; } ;
typedef  TYPE_2__ dof_sec_t ;
struct TYPE_14__ {size_t dofp_provider; size_t dofp_mod; size_t dofp_func; size_t dofp_name; int /*<<< orphan*/  dofp_strtab; } ;
typedef  TYPE_3__ dof_probedesc_t ;
struct TYPE_15__ {scalar_t__ dofh_loadsz; } ;
typedef  TYPE_4__ dof_hdr_t ;

/* Variables and functions */
 scalar_t__ DOF_SECT_PROBEDESC ; 
 int /*<<< orphan*/  DOF_SECT_STRTAB ; 
 scalar_t__ DTRACE_FUNCNAMELEN ; 
 scalar_t__ DTRACE_MODNAMELEN ; 
 scalar_t__ DTRACE_NAMELEN ; 
 scalar_t__ DTRACE_PROVNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 TYPE_2__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static dtrace_probedesc_t *
FUNC4(dof_hdr_t *dof, dof_sec_t *sec, dtrace_probedesc_t *desc)
{
	dof_probedesc_t *probe;
	dof_sec_t *strtab;
	uintptr_t daddr = (uintptr_t)dof;
	uintptr_t str;
	size_t size;

	if (sec->dofs_type != DOF_SECT_PROBEDESC) {
		FUNC1(dof, "invalid probe section");
		return (NULL);
	}

	if (sec->dofs_align != sizeof (dof_secidx_t)) {
		FUNC1(dof, "bad alignment in probe description");
		return (NULL);
	}

	if (sec->dofs_offset + sizeof (dof_probedesc_t) > dof->dofh_loadsz) {
		FUNC1(dof, "truncated probe description");
		return (NULL);
	}

	probe = (dof_probedesc_t *)(uintptr_t)(daddr + sec->dofs_offset);
	strtab = FUNC2(dof, DOF_SECT_STRTAB, probe->dofp_strtab);

	if (strtab == NULL)
		return (NULL);

	str = daddr + strtab->dofs_offset;
	size = strtab->dofs_size;

	if (probe->dofp_provider >= strtab->dofs_size) {
		FUNC1(dof, "corrupt probe provider");
		return (NULL);
	}

	(void) FUNC3(desc->dtpd_provider,
	    (char *)(str + probe->dofp_provider),
	    FUNC0(DTRACE_PROVNAMELEN - 1, size - probe->dofp_provider));

	if (probe->dofp_mod >= strtab->dofs_size) {
		FUNC1(dof, "corrupt probe module");
		return (NULL);
	}

	(void) FUNC3(desc->dtpd_mod, (char *)(str + probe->dofp_mod),
	    FUNC0(DTRACE_MODNAMELEN - 1, size - probe->dofp_mod));

	if (probe->dofp_func >= strtab->dofs_size) {
		FUNC1(dof, "corrupt probe function");
		return (NULL);
	}

	(void) FUNC3(desc->dtpd_func, (char *)(str + probe->dofp_func),
	    FUNC0(DTRACE_FUNCNAMELEN - 1, size - probe->dofp_func));

	if (probe->dofp_name >= strtab->dofs_size) {
		FUNC1(dof, "corrupt probe name");
		return (NULL);
	}

	(void) FUNC3(desc->dtpd_name, (char *)(str + probe->dofp_name),
	    FUNC0(DTRACE_NAMELEN - 1, size - probe->dofp_name));

	return (desc);
}