#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char uint64_t ;
struct vmcb {int dummy; } ;
struct svm_softc {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 struct vmcb* FUNC4 (struct svm_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct svm_softc*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct svm_softc *softc, int vcpu, int write, int ident,
	uint64_t *val)
{
	struct vmcb *vmcb;
	int off, bytes;
	char *ptr;

	vmcb	= FUNC4(softc, vcpu);
	off	= FUNC2(ident);
	bytes	= FUNC1(ident);

	if ((off + bytes) >= sizeof (struct vmcb))
		return (EINVAL);

	ptr = (char *)vmcb;

	if (!write)
		*val = 0;

	switch (bytes) {
	case 8:
	case 4:
	case 2:
		if (write)
			FUNC3(ptr + off, val, bytes);
		else
			FUNC3(val, ptr + off, bytes);
		break;
	default:
		FUNC0(softc->vm, vcpu,
		    "Invalid size %d for VMCB access: %d", bytes);
		return (EINVAL);
	}

	/* Invalidate all VMCB state cached by h/w. */
	if (write)
		FUNC5(softc, vcpu, 0xffffffff);

	return (0);
}