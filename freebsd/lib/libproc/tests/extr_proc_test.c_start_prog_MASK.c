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
struct proc_handle {int dummy; } ;
struct atf_tc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atf_tc const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct proc_handle**) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  target_prog_file ; 

__attribute__((used)) static struct proc_handle *
FUNC7(const struct atf_tc *tc, bool sig)
{
	char *argv[3];
	struct proc_handle *phdl;
	int error;

	FUNC2(&argv[0], "%d/%d", FUNC3(tc, "srcdir"),
	    target_prog_file);
	FUNC0(argv[0] != NULL);

	if (sig) {
		argv[1] = FUNC6("-s");
		argv[2] = NULL;
	} else {
		argv[1] = NULL;
	}

	error = FUNC5(argv[0], argv, NULL, NULL, NULL, &phdl);
	FUNC1(error, 0, "failed to run '%s'", target_prog_file);
	FUNC0(phdl != NULL);

	FUNC4(argv[0]);
	FUNC4(argv[1]);

	return (phdl);
}