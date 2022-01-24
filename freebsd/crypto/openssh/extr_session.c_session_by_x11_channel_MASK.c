#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* x11_chanids; int /*<<< orphan*/  self; int /*<<< orphan*/  used; } ;
typedef  TYPE_1__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* sessions ; 
 int sessions_nalloc ; 

__attribute__((used)) static Session *
FUNC2(int id)
{
	int i, j;

	for (i = 0; i < sessions_nalloc; i++) {
		Session *s = &sessions[i];

		if (s->x11_chanids == NULL || !s->used)
			continue;
		for (j = 0; s->x11_chanids[j] != -1; j++) {
			if (s->x11_chanids[j] == id) {
				FUNC0("session_by_x11_channel: session %d "
				    "channel %d", s->self, id);
				return s;
			}
		}
	}
	FUNC0("session_by_x11_channel: unknown channel %d", id);
	FUNC1();
	return NULL;
}