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
struct auth_master {struct auth_master* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static struct auth_master*
FUNC2(struct auth_master*** list)
{
	struct auth_master *m;
	m = (struct auth_master*)FUNC0(1, sizeof(*m));
	if(!m) {
		FUNC1("malloc failure");
		return NULL;
	}
	/* set first pointer to m, or next pointer of previous element to m */
	(**list) = m;
	/* store m's next pointer as future point to store at */
	(*list) = &(m->next);
	return m;
}