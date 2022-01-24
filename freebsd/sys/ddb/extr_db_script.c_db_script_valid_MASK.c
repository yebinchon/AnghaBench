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

/* Variables and functions */
 scalar_t__ DB_MAXLINE ; 
 scalar_t__ DB_MAXSCRIPTLEN ; 
 scalar_t__ DB_MAXSCRIPTNAME ; 
 int EINVAL ; 
 char* db_static_buffer ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (char**,char*) ; 

__attribute__((used)) static int
FUNC3(const char *scriptname, const char *script)
{
	char *buffer, *command;

	if (FUNC1(scriptname) == 0)
		return (EINVAL);
	if (FUNC1(scriptname) >= DB_MAXSCRIPTNAME)
		return (EINVAL);
	if (FUNC1(script) >= DB_MAXSCRIPTLEN)
		return (EINVAL);
	buffer = db_static_buffer;
	FUNC0(buffer, script);
	while ((command = FUNC2(&buffer, ";")) != NULL) {
		if (FUNC1(command) >= DB_MAXLINE)
			return (EINVAL);
	}
	return (0);
}