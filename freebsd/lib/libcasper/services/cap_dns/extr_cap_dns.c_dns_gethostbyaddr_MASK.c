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
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int NO_RECOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char*) ; 
 struct hostent* FUNC2 (void const*,int /*<<< orphan*/ ,int) ; 
 int h_errno ; 
 int /*<<< orphan*/  FUNC3 (struct hostent*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/  const*,char*,size_t*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,char*) ; 

__attribute__((used)) static int
FUNC6(const nvlist_t *limits, const nvlist_t *nvlin,
    nvlist_t *nvlout)
{
	struct hostent *hp;
	const void *addr;
	size_t addrsize;
	int family;

	if (!FUNC1(limits, "ADDR2NAME") &&
	    !FUNC1(limits, "ADDR"))
		return (NO_RECOVERY);

	family = (int)FUNC5(nvlin, "family");

	if (!FUNC0(limits, family))
		return (NO_RECOVERY);

	addr = FUNC4(nvlin, "addr", &addrsize);
	hp = FUNC2(addr, (socklen_t)addrsize, family);
	if (hp == NULL)
		return (h_errno);
	FUNC3(hp, nvlout);
	return (0);
}