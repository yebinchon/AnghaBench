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
struct timeval {int tv_usec; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  TEST1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct event*) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * pair ; 
 int /*<<< orphan*/  read_once_cb ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC11(void)
{
	struct event ev;
	struct timeval tv;

	/* Very simple read test */
	FUNC7("Want read only once: ");

	if (FUNC10(pair[0], TEST1, FUNC8(TEST1)+1) < 0) {
		FUNC9("write");
	}

	/* Setup the loop termination */
	FUNC5(&tv);
	tv.tv_usec = 300*1000;
	FUNC3(&tv);

	FUNC4(&ev, pair[1], EV_READ, read_once_cb, &ev);
	if (FUNC1(&ev, NULL) == -1)
		FUNC6(1);
	FUNC2();

	FUNC0();
}