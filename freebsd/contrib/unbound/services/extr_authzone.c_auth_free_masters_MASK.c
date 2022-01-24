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
struct auth_master {struct auth_master* file; struct auth_master* host; int /*<<< orphan*/  list; struct auth_master* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_master*) ; 

__attribute__((used)) static void
FUNC2(struct auth_master* list)
{
	struct auth_master* n;
	while(list) {
		n = list->next;
		FUNC0(list->list);
		FUNC1(list->host);
		FUNC1(list->file);
		FUNC1(list);
		list = n;
	}
}