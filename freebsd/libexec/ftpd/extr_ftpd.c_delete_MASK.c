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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ guest ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 
 scalar_t__ noguestmod ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 

void
FUNC8(char *name)
{
	struct stat st;

	FUNC0("delete", name);
	if (FUNC3(name, &st) < 0) {
		FUNC4(550, name);
		return;
	}
	if (FUNC1(st.st_mode)) {
		if (FUNC6(name) < 0) {
			FUNC4(550, name);
			return;
		}
		goto done;
	}
	if (guest && noguestmod) {
		FUNC5(550, "Operation not permitted.");
		return;
	}
	if (FUNC7(name) < 0) {
		FUNC4(550, name);
		return;
	}
done:
	FUNC2("DELE");
}