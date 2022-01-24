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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  TOK_RESET 128 
 int FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nat64statscmds ; 

__attribute__((used)) static void
FUNC4(const char *name, uint8_t set, int ac, char *av[])
{
	int tcmd;

	if (ac == 0) {
		FUNC3(name, set);
		return;
	}
	FUNC0("nat64lsn stats needs command");
	tcmd = FUNC1(nat64statscmds, *av, "nat64lsn stats command");
	switch (tcmd) {
	case TOK_RESET:
		FUNC2(name, set);
	}
}