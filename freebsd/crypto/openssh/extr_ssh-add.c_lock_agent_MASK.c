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
typedef  int /*<<< orphan*/  prompt ;

/* Variables and functions */
 int /*<<< orphan*/  RP_ALLOW_STDIN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (int,int,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(int agent_fd, int lock)
{
	char prompt[100], *p1, *p2;
	int r, passok = 1, ret = -1;

	FUNC7(prompt, "Enter lock password: ", sizeof(prompt));
	p1 = FUNC3(prompt, RP_ALLOW_STDIN);
	if (lock) {
		FUNC7(prompt, "Again: ", sizeof prompt);
		p2 = FUNC3(prompt, RP_ALLOW_STDIN);
		if (FUNC6(p1, p2) != 0) {
			FUNC1(stderr, "Passwords do not match.\n");
			passok = 0;
		}
		FUNC0(p2, FUNC8(p2));
		FUNC2(p2);
	}
	if (passok) {
		if ((r = FUNC5(agent_fd, lock, p1)) == 0) {
			FUNC1(stderr, "Agent %slocked.\n", lock ? "" : "un");
			ret = 0;
		} else {
			FUNC1(stderr, "Failed to %slock agent: %s\n",
			    lock ? "" : "un", FUNC4(r));
		}
	}
	FUNC0(p1, FUNC8(p1));
	FUNC2(p1);
	return (ret);
}