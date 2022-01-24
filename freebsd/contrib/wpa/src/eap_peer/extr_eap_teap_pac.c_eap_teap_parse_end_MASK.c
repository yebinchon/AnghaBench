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
struct eap_teap_pac {struct eap_teap_pac* next; } ;

/* Variables and functions */

__attribute__((used)) static const char * FUNC0(struct eap_teap_pac **pac_root,
				       struct eap_teap_pac **pac)
{
	if (!(*pac))
		return "END line without START";
	if (*pac_root) {
		struct eap_teap_pac *end = *pac_root;

		while (end->next)
			end = end->next;
		end->next = *pac;
	} else
		*pac_root = *pac;

	*pac = NULL;
	return NULL;
}