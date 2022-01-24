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
typedef  int /*<<< orphan*/  uint64_t ;
struct hostent {scalar_t__ h_length; int /*<<< orphan*/ ** h_addr_list; int /*<<< orphan*/ ** h_aliases; scalar_t__ h_addrtype; int /*<<< orphan*/ * h_name; } ;
typedef  int /*<<< orphan*/  nvlname ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static void
FUNC5(const struct hostent *hp, nvlist_t *nvl)
{
	unsigned int ii;
	char nvlname[64];
	int n;

	FUNC3(nvl, "name", hp->h_name);
	FUNC2(nvl, "addrtype", (uint64_t)hp->h_addrtype);
	FUNC2(nvl, "length", (uint64_t)hp->h_length);

	if (hp->h_aliases == NULL) {
		FUNC2(nvl, "naliases", 0);
	} else {
		for (ii = 0; hp->h_aliases[ii] != NULL; ii++) {
			n = FUNC4(nvlname, sizeof(nvlname), "alias%u", ii);
			FUNC0(n > 0 && n < (int)sizeof(nvlname));
			FUNC3(nvl, nvlname, hp->h_aliases[ii]);
		}
		FUNC2(nvl, "naliases", (uint64_t)ii);
	}

	if (hp->h_addr_list == NULL) {
		FUNC2(nvl, "naddrs", 0);
	} else {
		for (ii = 0; hp->h_addr_list[ii] != NULL; ii++) {
			n = FUNC4(nvlname, sizeof(nvlname), "addr%u", ii);
			FUNC0(n > 0 && n < (int)sizeof(nvlname));
			FUNC1(nvl, nvlname, hp->h_addr_list[ii],
			    (size_t)hp->h_length);
		}
		FUNC2(nvl, "naddrs", (uint64_t)ii);
	}
}