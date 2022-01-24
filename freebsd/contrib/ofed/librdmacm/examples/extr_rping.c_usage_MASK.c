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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(const char *name)
{
	FUNC1("%s -s [-vVd] [-S size] [-C count] [-a addr] [-p port]\n", 
	       FUNC0(name));
	FUNC1("%s -c [-vVd] [-S size] [-C count] [-I addr] -a addr [-p port]\n", 
	       FUNC0(name));
	FUNC1("\t-c\t\tclient side\n");
	FUNC1("\t-I\t\tSource address to bind to for client.\n");
	FUNC1("\t-s\t\tserver side.  To bind to any address with IPv6 use -a ::0\n");
	FUNC1("\t-v\t\tdisplay ping data to stdout\n");
	FUNC1("\t-V\t\tvalidate ping data\n");
	FUNC1("\t-d\t\tdebug printfs\n");
	FUNC1("\t-S size \tping data size\n");
	FUNC1("\t-C count\tping count times\n");
	FUNC1("\t-a addr\t\taddress\n");
	FUNC1("\t-p port\t\tport\n");
	FUNC1("\t-P\t\tpersistent server mode allowing multiple connections\n");
}