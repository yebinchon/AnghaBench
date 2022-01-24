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
typedef  scalar_t__ pid_t ;
struct TYPE_4__ {scalar_t__ pid; scalar_t__ used; } ;
typedef  TYPE_1__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* sessions ; 
 int sessions_nalloc ; 

__attribute__((used)) static Session *
FUNC3(pid_t pid)
{
	int i;
	FUNC0("session_by_pid: pid %ld", (long)pid);
	for (i = 0; i < sessions_nalloc; i++) {
		Session *s = &sessions[i];
		if (s->used && s->pid == pid)
			return s;
	}
	FUNC1("session_by_pid: unknown pid %ld", (long)pid);
	FUNC2();
	return NULL;
}