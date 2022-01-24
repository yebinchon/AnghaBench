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
struct listen_port {int fd; struct listen_port* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct listen_port*) ; 

void FUNC3(struct listen_port* list)
{
	struct listen_port* nx;
	while(list) {
		nx = list->next;
		if(list->fd != -1) {
#ifndef USE_WINSOCK
			FUNC0(list->fd);
#else
			closesocket(list->fd);
#endif
		}
		FUNC2(list);
		list = nx;
	}
}