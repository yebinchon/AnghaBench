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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2()
{
	FUNC1(stderr,
		"usage: bootpgw [-a] [-i | -s] [-d level] [-h count] [-t timeout]\n"
		"               [-w time] server\n");
	FUNC1(stderr, "\t -a\tdon't modify ARP table\n");
	FUNC1(stderr, "\t -d n\tset debug level\n");
	FUNC1(stderr, "\t -h n\tset max hop count\n");
	FUNC1(stderr, "\t -i\tforce inetd mode (run as child of inetd)\n");
	FUNC1(stderr, "\t -s\tforce standalone mode (run without inetd)\n");
	FUNC1(stderr, "\t -t n\tset inetd exit timeout to n minutes\n");
	FUNC1(stderr, "\t -w n\tset min wait time (secs)\n");
	FUNC0(1);
}