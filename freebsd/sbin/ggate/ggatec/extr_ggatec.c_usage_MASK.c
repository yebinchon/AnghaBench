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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(void)
{

	FUNC1(stderr, "usage: %s create [-nv] [-o <ro|wo|rw>] [-p port] "
	    "[-q queue_size] [-R rcvbuf] [-S sndbuf] [-s sectorsize] "
	    "[-t timeout] [-u unit] <host> <path>\n", FUNC2());
	FUNC1(stderr, "       %s rescue [-nv] [-o <ro|wo|rw>] [-p port] "
	    "[-R rcvbuf] [-S sndbuf] <-u unit> <host> <path>\n", FUNC2());
	FUNC1(stderr, "       %s destroy [-f] <-u unit>\n", FUNC2());
	FUNC1(stderr, "       %s list [-v] [-u unit]\n", FUNC2());
	FUNC0(EXIT_FAILURE);
}