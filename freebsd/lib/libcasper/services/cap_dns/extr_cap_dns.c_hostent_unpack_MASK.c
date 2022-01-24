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
struct hostent {int h_addrtype; int h_length; int /*<<< orphan*/ ** h_addr_list; int /*<<< orphan*/ ** h_aliases; int /*<<< orphan*/ * h_name; } ;
typedef  int /*<<< orphan*/  nvlname ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  NO_RECOVERY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int,unsigned int) ; 
 int /*<<< orphan*/  h_errno ; 
 int /*<<< orphan*/  FUNC3 (struct hostent*) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC8 (char*,int,char*,unsigned int) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hostent *
FUNC10(const nvlist_t *nvl, struct hostent *hp)
{
	unsigned int ii, nitems;
	char nvlname[64];
	int n;

	FUNC3(hp);

	hp->h_name = FUNC9(FUNC7(nvl, "name"));
	if (hp->h_name == NULL)
		goto fail;
	hp->h_addrtype = (int)FUNC6(nvl, "addrtype");
	hp->h_length = (int)FUNC6(nvl, "length");

	nitems = (unsigned int)FUNC6(nvl, "naliases");
	hp->h_aliases = FUNC2(sizeof(hp->h_aliases[0]), nitems + 1);
	if (hp->h_aliases == NULL)
		goto fail;
	for (ii = 0; ii < nitems; ii++) {
		n = FUNC8(nvlname, sizeof(nvlname), "alias%u", ii);
		FUNC0(n > 0 && n < (int)sizeof(nvlname));
		hp->h_aliases[ii] =
		    FUNC9(FUNC7(nvl, nvlname));
		if (hp->h_aliases[ii] == NULL)
			goto fail;
	}
	hp->h_aliases[ii] = NULL;

	nitems = (unsigned int)FUNC6(nvl, "naddrs");
	hp->h_addr_list = FUNC2(sizeof(hp->h_addr_list[0]), nitems + 1);
	if (hp->h_addr_list == NULL)
		goto fail;
	for (ii = 0; ii < nitems; ii++) {
		hp->h_addr_list[ii] = FUNC4(hp->h_length);
		if (hp->h_addr_list[ii] == NULL)
			goto fail;
		n = FUNC8(nvlname, sizeof(nvlname), "addr%u", ii);
		FUNC0(n > 0 && n < (int)sizeof(nvlname));
		FUNC1(FUNC5(nvl, nvlname, NULL),
		    hp->h_addr_list[ii], hp->h_length);
	}
	hp->h_addr_list[ii] = NULL;

	return (hp);
fail:
	FUNC3(hp);
	h_errno = NO_RECOVERY;
	return (NULL);
}