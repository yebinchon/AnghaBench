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
typedef  int /*<<< orphan*/  pre ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int UNBOUND_CONTROL_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC9(SSL* ssl, int fd, int quiet, int argc, char* argv[])
{
	char pre[10];
	const char* space=" ";
	const char* newline="\n";
	int was_error = 0, first_line = 1;
	int i;
	char buf[1024];
	FUNC5(pre, sizeof(pre), "UBCT%d ", UNBOUND_CONTROL_VERSION);
	FUNC2(ssl, fd, pre, FUNC7(pre));
	for(i=0; i<argc; i++) {
		FUNC2(ssl, fd, space, FUNC7(space));
		FUNC2(ssl, fd, argv[i], FUNC7(argv[i]));
	}
	FUNC2(ssl, fd, newline, FUNC7(newline));

	if(argc == 1 && FUNC6(argv[0], "load_cache") == 0) {
		FUNC4(ssl, fd, stdin, buf, sizeof(buf));
	}
	else if(argc >= 1 && (FUNC6(argv[0], "local_zones") == 0 ||
		FUNC6(argv[0], "local_zones_remove") == 0 ||
		FUNC6(argv[0], "local_datas") == 0 ||
		FUNC6(argv[0], "view_local_datas") == 0 ||
		FUNC6(argv[0], "local_datas_remove") == 0)) {
		FUNC4(ssl, fd, stdin, buf, sizeof(buf));
		FUNC3(ssl, fd);
	}

	while(1) {
		if(FUNC1(ssl, fd, buf, sizeof(buf)) == 0) {
			break; /* EOF */
		}
		if(first_line && FUNC8(buf, "error", 5) == 0) {
			FUNC0("%s", buf);
			was_error = 1;
		} else if (!quiet)
			FUNC0("%s", buf);

		first_line = 0;
	}
	return was_error;
}