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
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  port_range ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct in_addr*) ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static int
FUNC4 (const char* str, struct in_addr* addr, char* proto,
			port_range *portRange)
{
	char*	ptr;

	ptr = FUNC3 (str, ':');
	if (!ptr)
		FUNC2 (EX_DATAERR, "%s is missing port number", str);

	*ptr = '\0';
	++ptr;

	FUNC0 (str, addr);
	return FUNC1 (ptr, proto, portRange);
}