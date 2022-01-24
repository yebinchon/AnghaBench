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
struct eap_sim_reauth {struct eap_sim_reauth* next; int /*<<< orphan*/  reauth_id; } ;
struct eap_sim_db_data {struct eap_sim_reauth* reauths; scalar_t__ sqlite_db; } ;

/* Variables and functions */
 struct eap_sim_reauth* FUNC0 (struct eap_sim_db_data*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 

struct eap_sim_reauth *
FUNC2(struct eap_sim_db_data *data,
			    const char *reauth_id)
{
	struct eap_sim_reauth *r;

#ifdef CONFIG_SQLITE
	if (data->sqlite_db)
		return db_get_reauth(data, reauth_id);
#endif /* CONFIG_SQLITE */

	r = data->reauths;
	while (r) {
		if (FUNC1(r->reauth_id, reauth_id) == 0)
			break;
		r = r->next;
	}

	return r;
}