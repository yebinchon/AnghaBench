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
struct eap_sim_db_pending {int aka; struct eap_sim_db_pending* next; int /*<<< orphan*/  imsi; } ;
struct eap_sim_db_data {struct eap_sim_db_pending* pending; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static struct eap_sim_db_pending *
FUNC1(struct eap_sim_db_data *data, const char *imsi, int aka)
{
	struct eap_sim_db_pending *entry, *prev = NULL;

	entry = data->pending;
	while (entry) {
		if (entry->aka == aka && FUNC0(entry->imsi, imsi) == 0) {
			if (prev)
				prev->next = entry->next;
			else
				data->pending = entry->next;
			break;
		}
		prev = entry;
		entry = entry->next;
	}
	return entry;
}