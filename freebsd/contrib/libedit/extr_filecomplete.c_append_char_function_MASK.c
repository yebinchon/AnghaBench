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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int FUNC3 (char*,struct stat*) ; 

__attribute__((used)) static const char *
FUNC4(const char *name)
{
	struct stat stbuf;
	char *expname = *name == '~' ? FUNC2(name) : NULL;
	const char *rs = " ";

	if (FUNC3(expname ? expname : name, &stbuf) == -1)
		goto out;
	if (FUNC0(stbuf.st_mode))
		rs = "/";
out:
	if (expname)
		FUNC1(expname);
	return rs;
}