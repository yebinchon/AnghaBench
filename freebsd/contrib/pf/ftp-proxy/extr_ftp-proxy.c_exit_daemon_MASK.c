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
struct session {int dummy; } ;

/* Variables and functions */
 struct session* FUNC0 (int /*<<< orphan*/ *) ; 
 struct session* FUNC1 (int /*<<< orphan*/ *) ; 
 struct session* FUNC2 (struct session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  FUNC4 (struct session*) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sessions ; 

void
FUNC6(void)
{
	struct session *s, *next;

	for (s = FUNC1(&sessions); s != FUNC0(&sessions); s = next) {
		next = FUNC2(s, entry);
		FUNC4(s);
	}

	if (daemonize)
		FUNC3();

	FUNC5(0);
}