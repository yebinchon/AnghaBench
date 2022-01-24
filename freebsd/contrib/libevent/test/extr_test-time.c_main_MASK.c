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
struct timeval {int /*<<< orphan*/  tv_usec; scalar_t__ tv_sec; } ;
struct event {int dummy; } ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int NEVENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int called ; 
 int /*<<< orphan*/ * ev ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  time_cb ; 
 int /*<<< orphan*/  weakrand_state ; 

int
FUNC10(int argc, char **argv)
{
	struct timeval tv;
	int i;
#ifdef _WIN32
	WORD wVersionRequested;
	WSADATA wsaData;

	wVersionRequested = MAKEWORD(2, 2);

	(void) WSAStartup(wVersionRequested, &wsaData);
#endif

	FUNC6(&weakrand_state, 0);

	/* Initalize the event library */
	FUNC3();

	for (i = 0; i < NEVENT; i++) {
		ev[i] = FUNC7(sizeof(struct event));

		/* Initalize one event */
		FUNC5(ev[i], time_cb, ev[i]);
		tv.tv_sec = 0;
		tv.tv_usec = FUNC9(50000);
		FUNC4(ev[i], &tv);
	}

	FUNC2();


	FUNC8("%d, %d\n", called, NEVENT);
	return (called < NEVENT);
}