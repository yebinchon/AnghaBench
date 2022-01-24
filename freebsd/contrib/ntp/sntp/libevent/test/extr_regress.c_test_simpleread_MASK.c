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
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  SHUT_WR ; 
 int /*<<< orphan*/  TEST1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct event*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * pair ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  simple_read_cb ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC10(void)
{
	struct event ev;

	/* Very simple read test */
	FUNC5("Simple read: ");

	if (FUNC9(pair[0], TEST1, FUNC7(TEST1)+1) < 0) {
		FUNC8("write");
	}

	FUNC6(pair[0], SHUT_WR);

	FUNC3(&ev, pair[1], EV_READ, simple_read_cb, &ev);
	if (FUNC1(&ev, NULL) == -1)
		FUNC4(1);
	FUNC2();

	FUNC0();
}