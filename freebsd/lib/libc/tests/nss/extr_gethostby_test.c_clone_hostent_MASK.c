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
struct hostent {char* h_name; char** h_aliases; char** h_addr_list; int /*<<< orphan*/  h_length; int /*<<< orphan*/  h_addrtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hostent*,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(struct hostent *dest, struct hostent const *src)
{
	FUNC0(dest != NULL);
	FUNC0(src != NULL);

	char **cp;
	int aliases_num;
	int addrs_num;
	size_t offset;

	FUNC4(dest, 0, sizeof(struct hostent));

	if (src->h_name != NULL) {
		dest->h_name = FUNC5(src->h_name);
		FUNC0(dest->h_name != NULL);
	}

	dest->h_addrtype = src->h_addrtype;
	dest->h_length = src->h_length;

	if (src->h_aliases != NULL) {
		aliases_num = 0;
		for (cp = src->h_aliases; *cp; ++cp)
			++aliases_num;

		dest->h_aliases = FUNC1(aliases_num + 1, sizeof(char *));
		FUNC0(dest->h_aliases != NULL);

		for (cp = src->h_aliases; *cp; ++cp) {
			dest->h_aliases[cp - src->h_aliases] = FUNC5(*cp);
			FUNC0(dest->h_aliases[cp - src->h_aliases] != NULL);
		}
	}

	if (src->h_addr_list != NULL) {
		addrs_num = 0;
		for (cp = src->h_addr_list; *cp; ++cp)
			++addrs_num;

		dest->h_addr_list = FUNC1(addrs_num + 1, sizeof(char *));
		FUNC0(dest->h_addr_list != NULL);

		for (cp = src->h_addr_list; *cp; ++cp) {
			offset = cp - src->h_addr_list;
			dest->h_addr_list[offset] = FUNC2(src->h_length);
			FUNC0(dest->h_addr_list[offset] != NULL);
			FUNC3(dest->h_addr_list[offset],
			    src->h_addr_list[offset], src->h_length);
		}
	}
}