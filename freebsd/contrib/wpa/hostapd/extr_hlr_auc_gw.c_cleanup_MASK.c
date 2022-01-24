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
struct milenage_parameters {struct milenage_parameters* next; } ;
struct gsm_triplet {struct gsm_triplet* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct milenage_parameters* gsm_db ; 
 struct milenage_parameters* milenage_db ; 
 scalar_t__ milenage_file ; 
 int /*<<< orphan*/  FUNC1 (struct milenage_parameters*) ; 
 scalar_t__ serv_sock ; 
 scalar_t__ socket_path ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sqlite_db ; 
 scalar_t__ sqn_changes ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ update_milenage ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct gsm_triplet *g, *gprev;
	struct milenage_parameters *m, *prev;

	if (update_milenage && milenage_file && sqn_changes)
		FUNC4(milenage_file);

	g = gsm_db;
	while (g) {
		gprev = g;
		g = g->next;
		FUNC1(gprev);
	}

	m = milenage_db;
	while (m) {
		prev = m;
		m = m->next;
		FUNC1(prev);
	}

	if (serv_sock >= 0)
		FUNC0(serv_sock);
	if (socket_path)
		FUNC3(socket_path);

#ifdef CONFIG_SQLITE
	if (sqlite_db) {
		sqlite3_close(sqlite_db);
		sqlite_db = NULL;
	}
#endif /* CONFIG_SQLITE */
}