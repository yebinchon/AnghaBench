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
typedef  int vm_paddr_t ;
typedef  int u_int ;
struct dumperinfo {int /*<<< orphan*/  maxiosize; } ;

/* Variables and functions */
 int ECANCELED ; 
 int EINVAL ; 
 size_t MAXDUMPPGS ; 
 int PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  WD_LASTVAL ; 
 int FUNC1 (struct dumperinfo*) ; 
 int FUNC2 () ; 
 size_t counter ; 
 int FUNC3 (struct dumperinfo*,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  dump_va ; 
 int fragsz ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 size_t progress ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct dumperinfo *di, char *ptr, vm_paddr_t pa, size_t sz)
{
	size_t len;
	int error, i, c;
	u_int maxdumpsz;

	maxdumpsz = FUNC4(di->maxiosize, MAXDUMPPGS * PAGE_SIZE);
	if (maxdumpsz == 0)	/* seatbelt */
		maxdumpsz = PAGE_SIZE;
	error = 0;
	if (ptr != NULL && pa != 0) {
		FUNC6("cant have both va and pa!\n");
		return (EINVAL);
	}
	if (pa != 0) {
		if ((sz % PAGE_SIZE) != 0) {
			FUNC6("size not page aligned\n");
			return (EINVAL);
		}
		if ((pa & PAGE_MASK) != 0) {
			FUNC6("address not page aligned\n");
			return (EINVAL);
		}
	}
	if (ptr != NULL) {
		/* Flush any pre-existing pa pages before a virtual dump. */
		error = FUNC1(di);
		if (error)
			return (error);
	}
	while (sz) {
		len = maxdumpsz - fragsz;
		if (len > sz)
			len = sz;
		counter += len;
		progress -= len;
		if (counter >> 22) {
			FUNC6(" %lld", FUNC0(progress >> PAGE_SHIFT));
			counter &= (1<<22) - 1;
		}

#ifdef SW_WATCHDOG
		wdog_kern_pat(WD_LASTVAL);
#endif
		if (ptr) {
			error = FUNC3(di, ptr, 0, len);
			if (error)
				return (error);
			ptr += len;
			sz -= len;
		} else {
			for (i = 0; i < len; i += PAGE_SIZE)
				dump_va = FUNC5(pa + i,
				    (i + fragsz) >> PAGE_SHIFT);
			fragsz += len;
			pa += len;
			sz -= len;
			if (fragsz == maxdumpsz) {
				error = FUNC1(di);
				if (error)
					return (error);
			}
		}

		/* Check for user abort. */
		c = FUNC2();
		if (c == 0x03)
			return (ECANCELED);
		if (c != -1)
			FUNC6(" (CTRL-C to abort) ");
	}

	return (0);
}