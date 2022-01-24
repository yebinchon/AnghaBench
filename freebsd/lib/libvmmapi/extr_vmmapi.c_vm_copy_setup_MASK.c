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
typedef  int uint64_t ;
struct vmctx {int dummy; } ;
struct vm_guest_paging {int dummy; } ;
struct iovec {int iov_len; void* iov_base; } ;

/* Variables and functions */
 int EFAULT ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (size_t,scalar_t__) ; 
 int FUNC2 (struct vmctx*,int,struct vm_guest_paging*,int,int,int*,int*) ; 
 void* FUNC3 (struct vmctx*,int,int) ; 

int
FUNC4(struct vmctx *ctx, int vcpu, struct vm_guest_paging *paging,
    uint64_t gla, size_t len, int prot, struct iovec *iov, int iovcnt,
    int *fault)
{
	void *va;
	uint64_t gpa;
	int error, i, n, off;

	for (i = 0; i < iovcnt; i++) {
		iov[i].iov_base = 0;
		iov[i].iov_len = 0;
	}

	while (len) {
		FUNC0(iovcnt > 0);
		error = FUNC2(ctx, vcpu, paging, gla, prot, &gpa, fault);
		if (error || *fault)
			return (error);

		off = gpa & PAGE_MASK;
		n = FUNC1(len, PAGE_SIZE - off);

		va = FUNC3(ctx, gpa, n);
		if (va == NULL)
			return (EFAULT);

		iov->iov_base = va;
		iov->iov_len = n;
		iov++;
		iovcnt--;

		gla += n;
		len -= n;
	}
	return (0);
}