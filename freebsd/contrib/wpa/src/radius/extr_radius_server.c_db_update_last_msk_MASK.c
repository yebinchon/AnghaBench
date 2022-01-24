#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct radius_session {TYPE_1__* server; int /*<<< orphan*/  eap; } ;
struct TYPE_2__ {int /*<<< orphan*/  db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,size_t*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,char*,char const*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*,char const*,char*) ; 

__attribute__((used)) static void FUNC12(struct radius_session *sess, const char *msk)
{
#ifdef CONFIG_RADIUS_TEST
#ifdef CONFIG_SQLITE
	char *sql = NULL;
	char *id_str = NULL;
	const u8 *id;
	size_t id_len;
	const char *serial_num;

	if (!sess->server->db)
		return;

	serial_num = eap_get_serial_num(sess->eap);
	if (serial_num) {
		id_len = 5 + os_strlen(serial_num) + 1;
		id_str = os_malloc(id_len);
		if (!id_str)
			return;
		os_snprintf(id_str, id_len, "cert-%s", serial_num);
	} else {
		id = eap_get_identity(sess->eap, &id_len);
		if (!id)
			return;
		id_str = os_malloc(id_len + 1);
		if (!id_str)
			return;
		os_memcpy(id_str, id, id_len);
		id_str[id_len] = '\0';
	}

	sql = sqlite3_mprintf("UPDATE users SET last_msk=%Q WHERE identity=%Q",
			      msk, id_str);
	os_free(id_str);
	if (!sql)
		return;

	if (sqlite3_exec(sess->server->db, sql, NULL, NULL, NULL) !=
	    SQLITE_OK) {
		RADIUS_DEBUG("Failed to update last_msk: %s",
			     sqlite3_errmsg(sess->server->db));
	}
	sqlite3_free(sql);
#endif /* CONFIG_SQLITE */
#endif /* CONFIG_RADIUS_TEST */
}