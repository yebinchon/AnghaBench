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
struct eap_sim_pseudonym {struct eap_sim_pseudonym* next; } ;
struct eap_sim_db_pending {struct eap_sim_db_pending* next; } ;
struct eap_sim_db_data {struct eap_sim_db_pending* pending; struct eap_sim_reauth* reauths; struct eap_sim_pseudonym* pseudonyms; struct eap_sim_db_data* fname; int /*<<< orphan*/ * sqlite_db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_sim_db_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sim_db_data*,struct eap_sim_db_pending*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sim_pseudonym*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sim_reauth*) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sim_db_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void *priv)
{
	struct eap_sim_db_data *data = priv;
	struct eap_sim_pseudonym *p, *prev;
	struct eap_sim_reauth *r, *prevr;
	struct eap_sim_db_pending *pending, *prev_pending;

#ifdef CONFIG_SQLITE
	if (data->sqlite_db) {
		sqlite3_close(data->sqlite_db);
		data->sqlite_db = NULL;
	}
#endif /* CONFIG_SQLITE */

	FUNC0(data);
	FUNC4(data->fname);

	p = data->pseudonyms;
	while (p) {
		prev = p;
		p = p->next;
		FUNC2(prev);
	}

	r = data->reauths;
	while (r) {
		prevr = r;
		r = r->next;
		FUNC3(prevr);
	}

	pending = data->pending;
	while (pending) {
		prev_pending = pending;
		pending = pending->next;
		FUNC1(data, prev_pending);
	}

	FUNC4(data);
}