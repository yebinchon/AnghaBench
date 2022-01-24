#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* iface; } ;
typedef  TYPE_1__ unit_t ;
struct TYPE_7__ {int iftype; char* IOPname; char* name; struct TYPE_7__* next; } ;
typedef  TYPE_2__ iface_t ;
typedef  int bpf_u_int32 ;

/* Variables and functions */
#define  DLT_EN10MB 129 
#define  DLT_SITA 128 
 int FUNC0 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,TYPE_1__*,int) ; 

__attribute__((used)) static char *FUNC9(unit_t *u, char *IOPname, bpf_u_int32 iftype) {
	iface_t		*iface_ptr, *iface;
	char		*name;
	char		buf[32];
	char		*proto;
	char		*port;
	int			IOPportnum = 0;

	iface = FUNC2(sizeof(iface_t));		/* get memory for a structure */
	if (iface == NULL) {	/* oops, we didn't get the memory requested	*/
		FUNC1(stderr, "Error...couldn't allocate memory for interface structure...value of errno is: %d\n", errno);
		return NULL;
	}
	FUNC3((char *)iface, 0, sizeof(iface_t));	/* bzero is deprecated(), replaced with memset() */

	iface->iftype = iftype;					/* remember the interface type of this interface */

	name = FUNC2(FUNC6(IOPname) + 1);		/* get memory for the IOP's name */
        if (name == NULL) {    /* oops, we didn't get the memory requested     */
                FUNC1(stderr, "Error...couldn't allocate memory for IOPname...value of errno is: %d\n", errno);
                return NULL;
        }

	FUNC5(name, IOPname);					/* and copy it in */
	iface->IOPname = name;					/* and stick it into the structure */

	if (FUNC7(IOPname, "lo", 2) == 0) {
		IOPportnum = FUNC0(&IOPname[2]);
		switch (iftype) {
			case DLT_EN10MB:
				FUNC4(buf, sizeof buf, "lo", u);
				break;
			default:
				FUNC8(buf, sizeof buf, "???", u, IOPportnum);
				break;
		}
	} else if (FUNC7(IOPname, "eth", 3) == 0) {
		IOPportnum = FUNC0(&IOPname[3]);
		switch (iftype) {
			case DLT_EN10MB:
				FUNC4(buf, sizeof buf, "eth", u);
				break;
			default:
				FUNC8(buf, sizeof buf, "???", u, IOPportnum);
				break;
		}
	} else if (FUNC7(IOPname, "wan", 3) == 0) {
		IOPportnum = FUNC0(&IOPname[3]);
		switch (iftype) {
			case DLT_SITA:
				FUNC8(buf, sizeof buf, "wan", u, IOPportnum);
				break;
			default:
				FUNC8(buf, sizeof buf, "???", u, IOPportnum);
				break;
		}
	} else {
		FUNC1(stderr, "Error... invalid IOP name %s\n", IOPname);
		return NULL;
	}

	name = FUNC2(FUNC6(buf) + 1);			/* get memory for that name */
        if (name == NULL) {    /* oops, we didn't get the memory requested     */
                FUNC1(stderr, "Error...couldn't allocate memory for IOP port name...value of errno is: %d\n", errno);
                return NULL;
        }

	FUNC5(name, buf);						/* and copy it in */
	iface->name = name;						/* and stick it into the structure */

	if (u->iface == 0) {					/* if this is the first name */
		u->iface = iface;					/* stick this entry at the head of the list */
	} else {
		iface_ptr = u->iface;
		while (iface_ptr->next) {			/* othewise scan the list */
			iface_ptr = iface_ptr->next;	/* till we're at the last entry */
		}
		iface_ptr->next = iface;			/* then tack this entry on the end of the list */
	}
	return iface->name;
}