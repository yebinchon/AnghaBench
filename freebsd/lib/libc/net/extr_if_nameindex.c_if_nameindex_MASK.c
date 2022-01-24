#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_dl {int dummy; } ;
struct ifaddrs {char* ifa_name; TYPE_1__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct if_nameindex {char* if_name; scalar_t__ if_index; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_LINK ; 
 scalar_t__ FUNC0 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddrs*) ; 
 scalar_t__ FUNC2 (struct ifaddrs**) ; 
 char* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 

struct if_nameindex *
FUNC6(void)
{
	struct ifaddrs *ifaddrs, *ifa;
	unsigned int ni;
	int nbytes;
	struct if_nameindex *ifni, *ifni2;
	char *cp;

	if (FUNC2(&ifaddrs) < 0)
		return(NULL);

	/*
	 * First, find out how many interfaces there are, and how
	 * much space we need for the string names.
	 */
	ni = 0;
	nbytes = 0;
	for (ifa = ifaddrs; ifa != NULL; ifa = ifa->ifa_next) {
		if (ifa->ifa_addr &&
		    ifa->ifa_addr->sa_family == AF_LINK) {
			nbytes += FUNC5(ifa->ifa_name) + 1;
			ni++;
		}
	}

	/*
	 * Next, allocate a chunk of memory, use the first part
	 * for the array of structures, and the last part for
	 * the strings.
	 */
	cp = FUNC3((ni + 1) * sizeof(struct if_nameindex) + nbytes);
	ifni = (struct if_nameindex *)cp;
	if (ifni == NULL)
		goto out;
	cp += (ni + 1) * sizeof(struct if_nameindex);

	/*
	 * Now just loop through the list of interfaces again,
	 * filling in the if_nameindex array and making copies
	 * of all the strings.
	 */
	ifni2 = ifni;
	for (ifa = ifaddrs; ifa != NULL; ifa = ifa->ifa_next) {
		if (ifa->ifa_addr &&
		    ifa->ifa_addr->sa_family == AF_LINK) {
			ifni2->if_index =
			    FUNC0((struct sockaddr_dl*)ifa->ifa_addr);
			ifni2->if_name = cp;
			FUNC4(cp, ifa->ifa_name);
			ifni2++;
			cp += FUNC5(cp) + 1;
		}
	}
	/*
	 * Finally, don't forget to terminate the array.
	 */
	ifni2->if_index = 0;
	ifni2->if_name = NULL;
out:
	FUNC1(ifaddrs);
	return(ifni);
}