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
struct hostent {int dummy; } ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int NO_RECOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char*) ; 
 struct hostent* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int h_errno ; 
 int /*<<< orphan*/  FUNC3 (struct hostent*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,char*) ; 

__attribute__((used)) static int
FUNC6(const nvlist_t *limits, const nvlist_t *nvlin,
    nvlist_t *nvlout)
{
	struct hostent *hp;
	int family;

	if (!FUNC1(limits, "NAME2ADDR") &&
	    !FUNC1(limits, "NAME"))
		return (NO_RECOVERY);

	family = (int)FUNC4(nvlin, "family");

	if (!FUNC0(limits, family))
		return (NO_RECOVERY);

	hp = FUNC2(FUNC5(nvlin, "name"), family);
	if (hp == NULL)
		return (h_errno);
	FUNC3(hp, nvlout);
	return (0);
}