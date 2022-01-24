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
struct ifnet {int /*<<< orphan*/  if_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 struct ifnet* FUNC4 (char*) ; 

__attribute__((used)) static uint16_t
FUNC5(char *name)
{
	struct ifnet *ifp;
	uint16_t retval;

	if (name == NULL)
		return (0);
	FUNC1(FUNC2(curthread));
	ifp = FUNC4(name);
	FUNC0();
	if (ifp == NULL)
		return (0);
	retval = ifp->if_index;
	FUNC3(ifp);
	return (retval);
}