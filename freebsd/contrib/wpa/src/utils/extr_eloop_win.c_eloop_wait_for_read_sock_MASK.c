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
typedef  scalar_t__ WSAEVENT ;

/* Variables and functions */
 int /*<<< orphan*/  FD_READ ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 scalar_t__ WSA_INVALID_EVENT ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

void FUNC6(int sock)
{
	WSAEVENT event;

	event = FUNC1();
	if (event == WSA_INVALID_EVENT) {
		FUNC5("WSACreateEvent() failed: %d\n", FUNC3());
		return;
	}

	if (FUNC2(sock, event, FD_READ)) {
		FUNC5("WSAEventSelect() failed: %d\n", FUNC3());
		FUNC0(event);
		return ;
	}

	FUNC4(event, INFINITE);
	FUNC2(sock, event, 0);
	FUNC0(event);
}