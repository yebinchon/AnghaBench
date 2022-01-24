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

/* Variables and functions */
 int DRT_VALID_FLAGS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int db_look_token ; 

int
FUNC2(int flags)
{
	int	t;

	FUNC0((flags & ~(DRT_VALID_FLAGS_MASK)) == 0);

	if (db_look_token) {
	    t = db_look_token;
	    db_look_token = 0;
	}
	else
	    t = FUNC1(flags);
	return (t);
}