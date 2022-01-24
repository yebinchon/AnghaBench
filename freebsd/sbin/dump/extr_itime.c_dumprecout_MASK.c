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
struct dumpdates {int /*<<< orphan*/  dd_ddate; int /*<<< orphan*/  dd_level; int /*<<< orphan*/  dd_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ DUMPFMTLEN ; 
 char* DUMPOUTFMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dumpdates ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(FILE *file, const struct dumpdates *what)
{

	if (FUNC4(what->dd_name) > DUMPFMTLEN)
		FUNC2("Name '%s' exceeds DUMPFMTLEN (%d) bytes\n",
		    what->dd_name, DUMPFMTLEN);
	if (FUNC1(file, DUMPOUTFMT, DUMPFMTLEN, what->dd_name,
	      what->dd_level, FUNC0(&what->dd_ddate)) < 0)
		FUNC2("%s: %s\n", dumpdates, FUNC3(errno));
}