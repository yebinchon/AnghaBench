#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_8__ {struct TYPE_8__* next; int /*<<< orphan*/  flags; int /*<<< orphan*/ * addresses; struct TYPE_8__* name; int /*<<< orphan*/ * description; } ;
typedef  TYPE_1__ pcap_if_t ;
struct TYPE_9__ {TYPE_1__* beginning; } ;
typedef  TYPE_2__ pcap_if_list_t ;
typedef  int /*<<< orphan*/  bpf_u_int32 ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (char const*) ; 

pcap_if_t *
FUNC5(pcap_if_list_t *devlistp, const char *name, bpf_u_int32 flags,
    const char *description, char *errbuf)
{
	pcap_if_t *curdev, *prevdev, *nextdev;
	u_int this_figure_of_merit, nextdev_figure_of_merit;

	curdev = FUNC2(sizeof(pcap_if_t));
	if (curdev == NULL) {
		FUNC3(errbuf, PCAP_ERRBUF_SIZE,
		    errno, "malloc");
		return (NULL);
	}

	/*
	 * Fill in the entry.
	 */
	curdev->next = NULL;
	curdev->name = FUNC4(name);
	if (curdev->name == NULL) {
		FUNC3(errbuf, PCAP_ERRBUF_SIZE,
		    errno, "malloc");
		FUNC0(curdev);
		return (NULL);
	}
	if (description == NULL) {
		/*
		 * We weren't handed a description for the interface.
		 */
		curdev->description = NULL;
	} else {
		/*
		 * We were handed a description; make a copy.
		 */
		curdev->description = FUNC4(description);
		if (curdev->description == NULL) {
			FUNC3(errbuf, PCAP_ERRBUF_SIZE,
			    errno, "malloc");
			FUNC0(curdev->name);
			FUNC0(curdev);
			return (NULL);
		}
	}
	curdev->addresses = NULL;	/* list starts out as empty */
	curdev->flags = flags;

	/*
	 * Add it to the list, in the appropriate location.
	 * First, get the "figure of merit" for this interface.
	 */
	this_figure_of_merit = FUNC1(curdev);

	/*
	 * Now look for the last interface with an figure of merit
	 * less than or equal to the new interface's figure of merit.
	 *
	 * We start with "prevdev" being NULL, meaning we're before
	 * the first element in the list.
	 */
	prevdev = NULL;
	for (;;) {
		/*
		 * Get the interface after this one.
		 */
		if (prevdev == NULL) {
			/*
			 * The next element is the first element.
			 */
			nextdev = devlistp->beginning;
		} else
			nextdev = prevdev->next;

		/*
		 * Are we at the end of the list?
		 */
		if (nextdev == NULL) {
			/*
			 * Yes - we have to put the new entry after "prevdev".
			 */
			break;
		}

		/*
		 * Is the new interface's figure of merit less
		 * than the next interface's figure of merit,
		 * meaning that the new interface is better
		 * than the next interface?
		 */
		nextdev_figure_of_merit = FUNC1(nextdev);
		if (this_figure_of_merit < nextdev_figure_of_merit) {
			/*
			 * Yes - we should put the new entry
			 * before "nextdev", i.e. after "prevdev".
			 */
			break;
		}

		prevdev = nextdev;
	}

	/*
	 * Insert before "nextdev".
	 */
	curdev->next = nextdev;

	/*
	 * Insert after "prevdev" - unless "prevdev" is null,
	 * in which case this is the first interface.
	 */
	if (prevdev == NULL) {
		/*
		 * This is the first interface.  Make it
		 * the first element in the list of devices.
		 */
		devlistp->beginning = curdev;
	} else
		prevdev->next = curdev;
	return (curdev);
}