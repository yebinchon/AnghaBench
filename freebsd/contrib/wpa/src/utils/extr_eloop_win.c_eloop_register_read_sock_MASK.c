#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct eloop_sock {int sock; scalar_t__ event; int /*<<< orphan*/  handler; void* user_data; void* eloop_data; } ;
typedef  int /*<<< orphan*/  eloop_sock_handler ;
typedef  scalar_t__ WSAEVENT ;
struct TYPE_2__ {int reader_count; int max_sock; int reader_table_changed; struct eloop_sock* readers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FD_READ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 scalar_t__ WSA_INVALID_EVENT ; 
 TYPE_1__ eloop ; 
 scalar_t__ FUNC4 () ; 
 struct eloop_sock* FUNC5 (struct eloop_sock*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

int FUNC7(int sock, eloop_sock_handler handler,
			     void *eloop_data, void *user_data)
{
	WSAEVENT event;
	struct eloop_sock *tmp;

	if (FUNC4())
		return -1;

	event = FUNC1();
	if (event == WSA_INVALID_EVENT) {
		FUNC6("WSACreateEvent() failed: %d\n", FUNC3());
		return -1;
	}

	if (FUNC2(sock, event, FD_READ)) {
		FUNC6("WSAEventSelect() failed: %d\n", FUNC3());
		FUNC0(event);
		return -1;
	}
	tmp = FUNC5(eloop.readers, eloop.reader_count + 1,
			       sizeof(struct eloop_sock));
	if (tmp == NULL) {
		FUNC2(sock, event, 0);
		FUNC0(event);
		return -1;
	}

	tmp[eloop.reader_count].sock = sock;
	tmp[eloop.reader_count].eloop_data = eloop_data;
	tmp[eloop.reader_count].user_data = user_data;
	tmp[eloop.reader_count].handler = handler;
	tmp[eloop.reader_count].event = event;
	eloop.reader_count++;
	eloop.readers = tmp;
	if (sock > eloop.max_sock)
		eloop.max_sock = sock;
	eloop.reader_table_changed = 1;

	return 0;
}