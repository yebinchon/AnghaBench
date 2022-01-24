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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) ()) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 char* default_socket_path ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  handle_term ; 
 int ind_len ; 
 void* milenage_file ; 
 scalar_t__ FUNC5 (char*) ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 scalar_t__ FUNC11 (char*) ; 
 scalar_t__ FUNC12 (void*) ; 
 scalar_t__ serv_sock ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* socket_path ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sqlite_db ; 
 scalar_t__ stdout_debug ; 
 int update_milenage ; 
 int /*<<< orphan*/  FUNC15 () ; 

int FUNC16(int argc, char *argv[])
{
	int c;
	char *gsm_triplet_file = NULL;
	char *sqlite_db_file = NULL;
	int ret = 0;

	if (FUNC7())
		return -1;

	socket_path = default_socket_path;

	for (;;) {
		c = FUNC4(argc, argv, "D:g:hi:m:s:u");
		if (c < 0)
			break;
		switch (c) {
		case 'D':
#ifdef CONFIG_SQLITE
			sqlite_db_file = optarg;
			break;
#else /* CONFIG_SQLITE */
			FUNC8("No SQLite support included in the build\n");
			return -1;
#endif /* CONFIG_SQLITE */
		case 'g':
			gsm_triplet_file = optarg;
			break;
		case 'h':
			FUNC15();
			return 0;
		case 'i':
			ind_len = FUNC1(optarg);
			if (ind_len < 0 || ind_len > 32) {
				FUNC8("Invalid IND length\n");
				return -1;
			}
			break;
		case 'm':
			milenage_file = optarg;
			break;
		case 's':
			socket_path = optarg;
			break;
		case 'u':
			update_milenage = 1;
			break;
		default:
			FUNC15();
			return -1;
		}
	}

	if (!gsm_triplet_file && !milenage_file && !sqlite_db_file) {
		FUNC15();
		return -1;
	}

#ifdef CONFIG_SQLITE
	if (sqlite_db_file && (sqlite_db = db_open(sqlite_db_file)) == NULL)
		return -1;
#endif /* CONFIG_SQLITE */

	if (gsm_triplet_file && FUNC11(gsm_triplet_file) < 0)
		return -1;

	if (milenage_file && FUNC12(milenage_file) < 0)
		return -1;

	if (optind == argc) {
		serv_sock = FUNC5(socket_path);
		if (serv_sock < 0)
			return -1;

		FUNC8("Listening for requests on %s\n", socket_path);

		FUNC0(cleanup);
		FUNC13(SIGTERM, handle_term);
		FUNC13(SIGINT, handle_term);

		for (;;)
			FUNC9(serv_sock);
	} else {
		char buf[1000];
		socket_path = NULL;
		stdout_debug = 0;
		if (FUNC10(argv[optind], buf, sizeof(buf)) < 0) {
			FUNC8("FAIL\n");
			ret = -1;
		} else {
			FUNC8("%s\n", buf);
		}
		FUNC2();
	}

#ifdef CONFIG_SQLITE
	if (sqlite_db) {
		sqlite3_close(sqlite_db);
		sqlite_db = NULL;
	}
#endif /* CONFIG_SQLITE */

	FUNC6();

	return ret;
}