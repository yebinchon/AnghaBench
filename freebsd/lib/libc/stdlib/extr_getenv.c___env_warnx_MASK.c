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
typedef  int /*<<< orphan*/  progSep ;
typedef  int /*<<< orphan*/  nl ;

/* Variables and functions */
 int /*<<< orphan*/  STDERR_FILENO ; 
 char const* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3(const char *msg, const char *name, size_t nameLen)
{
	static const char nl[] = "\n";
	static const char progSep[] = ": ";

	FUNC1(STDERR_FILENO, FUNC0(), FUNC2(FUNC0()));
	FUNC1(STDERR_FILENO, progSep, sizeof(progSep) - 1);
	FUNC1(STDERR_FILENO, msg, FUNC2(msg));
	FUNC1(STDERR_FILENO, name, nameLen);
	FUNC1(STDERR_FILENO, nl, sizeof(nl) - 1);

	return;
}