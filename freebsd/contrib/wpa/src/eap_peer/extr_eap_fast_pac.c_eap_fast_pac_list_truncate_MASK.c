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
struct eap_fast_pac {struct eap_fast_pac* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_fast_pac*) ; 

size_t FUNC1(struct eap_fast_pac *pac_root,
				  size_t max_len)
{
	struct eap_fast_pac *pac, *prev;
	size_t count;

	pac = pac_root;
	prev = NULL;
	count = 0;

	while (pac) {
		count++;
		if (count > max_len)
			break;
		prev = pac;
		pac = pac->next;
	}

	if (count <= max_len || prev == NULL)
		return 0;

	count = 0;
	prev->next = NULL;

	while (pac) {
		prev = pac;
		pac = pac->next;
		FUNC0(prev);
		count++;
	}

	return count;
}