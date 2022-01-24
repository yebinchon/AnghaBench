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
struct auth_chunk {scalar_t__ len; struct auth_chunk* next; } ;

/* Variables and functions */

__attribute__((used)) static size_t
FUNC0(struct auth_chunk* list)
{
	struct auth_chunk* p;
	size_t s = 0;
	for(p=list; p; p=p->next) {
		s += p->len;
	}
	return s;
}