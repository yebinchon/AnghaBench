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
struct eap_sim_reauth {struct eap_sim_reauth* next; } ;
struct eap_sim_db_data {struct eap_sim_reauth* reauths; scalar_t__ sqlite_db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_sim_db_data*,struct eap_sim_reauth*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sim_reauth*) ; 

void FUNC2(struct eap_sim_db_data *data,
			      struct eap_sim_reauth *reauth)
{
	struct eap_sim_reauth *r, *prev = NULL;
#ifdef CONFIG_SQLITE
	if (data->sqlite_db) {
		db_remove_reauth(data, reauth);
		return;
	}
#endif /* CONFIG_SQLITE */
	r = data->reauths;
	while (r) {
		if (r == reauth) {
			if (prev)
				prev->next = r->next;
			else
				data->reauths = r->next;
			FUNC1(r);
			return;
		}
		prev = r;
		r = r->next;
	}
}