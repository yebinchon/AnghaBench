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
struct eap_sim_db_data {int sock; void (* get_complete_cb ) (void*,void*) ;unsigned int eap_sim_db_timeout; struct eap_sim_db_data* fname; int /*<<< orphan*/ * sqlite_db; void* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sim_db_data*) ; 
 scalar_t__ FUNC2 (struct eap_sim_db_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sim_db_data*) ; 
 struct eap_sim_db_data* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (struct eap_sim_db_data*,char*,int) ; 
 char* FUNC6 (struct eap_sim_db_data*,char*) ; 
 struct eap_sim_db_data* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

struct eap_sim_db_data *
FUNC9(const char *config, unsigned int db_timeout,
		void (*get_complete_cb)(void *ctx, void *session_ctx),
		void *ctx)
{
	struct eap_sim_db_data *data;
	char *pos;

	data = FUNC7(sizeof(*data));
	if (data == NULL)
		return NULL;

	data->sock = -1;
	data->get_complete_cb = get_complete_cb;
	data->ctx = ctx;
	data->eap_sim_db_timeout = db_timeout;
	data->fname = FUNC4(config);
	if (data->fname == NULL)
		goto fail;
	pos = FUNC6(data->fname, " db=");
	if (pos) {
		*pos = '\0';
#ifdef CONFIG_SQLITE
		pos += 4;
		data->sqlite_db = db_open(pos);
		if (data->sqlite_db == NULL)
			goto fail;
#endif /* CONFIG_SQLITE */
	}

	if (FUNC5(data->fname, "unix:", 5) == 0) {
		if (FUNC2(data)) {
			FUNC8(MSG_DEBUG, "EAP-SIM DB: External database "
				   "connection not available - will retry "
				   "later");
		}
	}

	return data;

fail:
	FUNC1(data);
	FUNC3(data->fname);
	FUNC3(data);
	return NULL;
}