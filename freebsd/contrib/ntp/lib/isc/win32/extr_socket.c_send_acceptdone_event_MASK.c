#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  accept_list; } ;
typedef  TYPE_1__ isc_task_t ;
typedef  TYPE_1__ isc_socket_t ;
struct TYPE_11__ {TYPE_1__* ev_sender; } ;
typedef  TYPE_3__ isc_socket_newconnev_t ;
typedef  int /*<<< orphan*/  isc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_link ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC5(isc_socket_t *sock, isc_socket_newconnev_t **adev) {
	isc_task_t *task;

	FUNC1(adev != NULL && *adev != NULL);

	task = (*adev)->ev_sender;
	(*adev)->ev_sender = sock;

	if (FUNC2(*adev, ev_link))
		FUNC3(sock->accept_list, *adev, ev_link);

	FUNC4(&task, (isc_event_t **)adev);

	FUNC0(sock);
}