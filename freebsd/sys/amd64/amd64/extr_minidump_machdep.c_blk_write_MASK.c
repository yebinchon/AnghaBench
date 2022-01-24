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
typedef  scalar_t__ vm_paddr_t ;
typedef  int u_int ;
struct dumperinfo {int /*<<< orphan*/  maxiosize; } ;

/* Variables and functions */
 int ECANCELED ; 
 int EINVAL ; 
 size_t MAXDUMPPGS ; 
 int PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 scalar_t__ WDOG_DUMP_INTERVAL ; 
 int /*<<< orphan*/  WD_LASTVAL ; 
 int FUNC0 (struct dumperinfo*) ; 
 int FUNC1 () ; 
 size_t counter ; 
 int FUNC2 (struct dumperinfo*,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  dump_va ; 
 int /*<<< orphan*/  dumpsize ; 
 int fragsz ; 
 int FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ progress ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ wdog_next ; 

__attribute__((used)) static int
FUNC8(struct dumperinfo *di, char *ptr, vm_paddr_t pa, size_t sz)
{
	size_t len;
	int error, i, c;
	u_int maxdumpsz;

	maxdumpsz = FUNC3(di->maxiosize, MAXDUMPPGS * PAGE_SIZE);
	if (maxdumpsz == 0)	/* seatbelt */
		maxdumpsz = PAGE_SIZE;
	error = 0;
	if ((sz % PAGE_SIZE) != 0) {
		FUNC5("size not page aligned\n");
		return (EINVAL);
	}
	if (ptr != NULL && pa != 0) {
		FUNC5("cant have both va and pa!\n");
		return (EINVAL);
	}
	if ((((uintptr_t)pa) % PAGE_SIZE) != 0) {
		FUNC5("address not page aligned %p\n", ptr);
		return (EINVAL);
	}
	if (ptr != NULL) {
		/* If we're doing a virtual dump, flush any pre-existing pa pages */
		error = FUNC0(di);
		if (error)
			return (error);
	}
	while (sz) {
		len = maxdumpsz - fragsz;
		if (len > sz)
			len = sz;
		counter += len;
		progress -= len;
		if (counter >> 24) {
			FUNC6(progress, dumpsize);
			counter &= (1<<24) - 1;
		}
		if (progress <= wdog_next) {
			FUNC7(WD_LASTVAL);
			if (wdog_next > WDOG_DUMP_INTERVAL)
				wdog_next -= WDOG_DUMP_INTERVAL;
			else
				wdog_next = 0;
		}

		if (ptr) {
			error = FUNC2(di, ptr, 0, len);
			if (error)
				return (error);
			ptr += len;
			sz -= len;
		} else {
			for (i = 0; i < len; i += PAGE_SIZE)
				dump_va = FUNC4(pa + i, (i + fragsz) >> PAGE_SHIFT);
			fragsz += len;
			pa += len;
			sz -= len;
			if (fragsz == maxdumpsz) {
				error = FUNC0(di);
				if (error)
					return (error);
			}
		}

		/* Check for user abort. */
		c = FUNC1();
		if (c == 0x03)
			return (ECANCELED);
		if (c != -1)
			FUNC5(" (CTRL-C to abort) ");
	}

	return (0);
}