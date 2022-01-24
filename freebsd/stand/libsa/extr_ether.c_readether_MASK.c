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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  time_t ;
struct iodesc {int /*<<< orphan*/  myea; } ;
struct ether_header {int /*<<< orphan*/  ether_type; int /*<<< orphan*/  ether_dhost; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ ETHER_ALIGN ; 
 int /*<<< orphan*/  bcea ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ debug ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (struct iodesc*,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

ssize_t
FUNC6(struct iodesc *d, void **pkt, void **payload, time_t tleft,
    uint16_t *etype)
{
	ssize_t n;
	struct ether_header *eh;
	void *ptr;

#ifdef ETHER_DEBUG
 	if (debug)
		printf("readether: called\n");
#endif

	ptr = NULL;
	n = FUNC3(d, &ptr, tleft);
	if (n == -1 || n < sizeof(*eh)) {
		FUNC2(ptr);
		return (-1);
	}

	eh = (struct ether_header *)((uintptr_t)ptr + ETHER_ALIGN);
	/* Validate Ethernet address. */
	if (FUNC0(d->myea, eh->ether_dhost, 6) != 0 &&
	    FUNC0(bcea, eh->ether_dhost, 6) != 0) {
#ifdef ETHER_DEBUG
		if (debug)
			printf("readether: not ours (ea=%s)\n",
			    ether_sprintf(eh->ether_dhost));
#endif
		FUNC2(ptr);
		return (-1);
	}

	*pkt = ptr;
	*payload = (void *)((uintptr_t)eh + sizeof(*eh));
	*etype = FUNC4(eh->ether_type);

	n -= sizeof(*eh);
	return (n);
}