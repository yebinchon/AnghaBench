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
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  activity_stop ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,int,...) ; 
 int /*<<< orphan*/  wrkpid ; 

__attribute__((used)) static void *
FUNC8(void *arg)
{
	int di, fi;
	char *prefix = arg, path[128];

	FUNC2(wrkpid);

	FUNC0(FUNC4(prefix, 0777));
	while (! activity_stop) {
		for (di = 0; di < 5; di++) {
			FUNC7(path, sizeof(path), "%s/d%d", prefix, di);
			FUNC0(FUNC4(path, 0777));
			for (fi = 0; fi < 5; fi++) {
				FUNC7(path, sizeof(path), "%s/d%d/f%d",
				    prefix, di, fi);
				FUNC1(path);
			}
		}
		for (di = 0; di < 5; di++) {
			for (fi = 0; fi < 5; fi++) {
				FUNC7(path, sizeof(path), "%s/d%d/f%d",
				    prefix, di, fi);
				FUNC0(FUNC6(path));
			}
			FUNC7(path, sizeof(path), "%s/d%d", prefix, di);
			FUNC0(FUNC5(path));
		}
	}
	FUNC0(FUNC5(prefix));

	FUNC3();

	return NULL;
}