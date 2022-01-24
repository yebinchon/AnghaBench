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
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 scalar_t__ tout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
    fd_set	o;

    FUNC1(&o);

    if (FUNC2() == 0) {
	FUNC0(tout, &o);
	(void) FUNC3(tout+1, (fd_set *) 0, &o, (fd_set *) 0,
			(struct timeval *) 0);	/* wait for TTLOWAT */
    } else {
	while (FUNC2()) {
	    (void) FUNC4(0);
	    FUNC0(tout, &o);
	    (void) FUNC3(tout+1, (fd_set *) 0, &o, (fd_set *) 0,
				(struct timeval *) 0);	/* wait for TTLOWAT */
	}
    }
}