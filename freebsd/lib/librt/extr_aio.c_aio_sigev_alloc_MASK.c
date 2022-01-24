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
struct sigevent {int dummy; } ;
struct sigev_node {int /*<<< orphan*/  sn_dispatch; int /*<<< orphan*/  sn_id; } ;
typedef  int /*<<< orphan*/  sigev_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  SI_ASYNCIO ; 
 struct sigev_node* FUNC0 (int /*<<< orphan*/ ,struct sigevent*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sigev_node*,struct sigevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sigev_node*) ; 
 int /*<<< orphan*/  aio_dispatch ; 
 int /*<<< orphan*/  errno ; 

__attribute__((used)) static int
FUNC6(sigev_id_t id, struct sigevent *sigevent,
    struct sigev_node **sn, struct sigevent *saved_ev)
{
	if (FUNC1()) {
		/* This might be that thread library is not enabled. */
		errno = EINVAL;
		return (-1);
	}

	*sn = FUNC0(SI_ASYNCIO, sigevent, NULL, 1);
	if (*sn == NULL) {
		errno = EAGAIN;
		return (-1);
	}
	
	*saved_ev = *sigevent;
	(*sn)->sn_id = id;
	FUNC2(*sn, sigevent, (*sn)->sn_id);
	(*sn)->sn_dispatch = aio_dispatch;

	FUNC3();
	FUNC5(*sn);
	FUNC4();

	return (0);
}