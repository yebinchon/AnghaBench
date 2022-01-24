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
struct eap_sim_db_pending {struct eap_sim_db_pending* next; } ;
struct eap_sim_db_data {struct eap_sim_db_pending* pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_sim_db_data*,struct eap_sim_db_pending*) ; 

__attribute__((used)) static void FUNC1(struct eap_sim_db_data *data,
				   struct eap_sim_db_pending *entry)
{
	struct eap_sim_db_pending **pp = &data->pending;

	while (*pp != NULL) {
		if (*pp == entry) {
			*pp = entry->next;
			FUNC0(data, entry);
			return;
		}
		pp = &(*pp)->next;
	}
}