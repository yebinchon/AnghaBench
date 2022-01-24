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
typedef  size_t uint64_t ;
struct vm_guest_paging {int dummy; } ;
struct vm_copyinfo {size_t gpa; size_t len; void* cookie; void* hva; } ;
struct vm {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct vm_copyinfo*,int) ; 
 size_t FUNC2 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct vm*,int,struct vm_copyinfo*,int) ; 
 int FUNC4 (struct vm*,int,struct vm_guest_paging*,size_t,int,size_t*,int*) ; 
 void* FUNC5 (struct vm*,int,size_t,size_t,int,void**) ; 

int
FUNC6(struct vm *vm, int vcpuid, struct vm_guest_paging *paging,
    uint64_t gla, size_t len, int prot, struct vm_copyinfo *copyinfo,
    int num_copyinfo, int *fault)
{
	int error, idx, nused;
	size_t n, off, remaining;
	void *hva, *cookie;
	uint64_t gpa;

	FUNC1(copyinfo, sizeof(struct vm_copyinfo) * num_copyinfo);

	nused = 0;
	remaining = len;
	while (remaining > 0) {
		FUNC0(nused < num_copyinfo, ("insufficient vm_copyinfo"));
		error = FUNC4(vm, vcpuid, paging, gla, prot, &gpa, fault);
		if (error || *fault)
			return (error);
		off = gpa & PAGE_MASK;
		n = FUNC2(remaining, PAGE_SIZE - off);
		copyinfo[nused].gpa = gpa;
		copyinfo[nused].len = n;
		remaining -= n;
		gla += n;
		nused++;
	}

	for (idx = 0; idx < nused; idx++) {
		hva = FUNC5(vm, vcpuid, copyinfo[idx].gpa,
		    copyinfo[idx].len, prot, &cookie);
		if (hva == NULL)
			break;
		copyinfo[idx].hva = hva;
		copyinfo[idx].cookie = cookie;
	}

	if (idx != nused) {
		FUNC3(vm, vcpuid, copyinfo, num_copyinfo);
		return (EFAULT);
	} else {
		*fault = 0;
		return (0);
	}
}