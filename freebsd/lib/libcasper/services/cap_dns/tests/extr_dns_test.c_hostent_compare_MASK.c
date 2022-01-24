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
struct hostent {scalar_t__ h_addrtype; scalar_t__ h_length; int /*<<< orphan*/  h_addr_list; int /*<<< orphan*/  h_aliases; int /*<<< orphan*/ * h_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC3(const struct hostent *hp0, const struct hostent *hp1)
{

	if (hp0 == NULL && hp1 != NULL)
		return (true);

	if (hp0 == NULL || hp1 == NULL)
		return (false);

	if (hp0->h_name != NULL || hp1->h_name != NULL) {
		if (hp0->h_name == NULL || hp1->h_name == NULL)
			return (false);
		if (FUNC2(hp0->h_name, hp1->h_name) != 0)
			return (false);
	}

	if (!FUNC1(hp0->h_aliases, hp1->h_aliases))
		return (false);
	if (!FUNC1(hp1->h_aliases, hp0->h_aliases))
		return (false);

	if (hp0->h_addrtype != hp1->h_addrtype)
		return (false);

	if (hp0->h_length != hp1->h_length)
		return (false);

	if (!FUNC0(hp0->h_addr_list, hp1->h_addr_list,
	    hp0->h_length)) {
		return (false);
	}
	if (!FUNC0(hp1->h_addr_list, hp0->h_addr_list,
	    hp0->h_length)) {
		return (false);
	}

	return (true);
}