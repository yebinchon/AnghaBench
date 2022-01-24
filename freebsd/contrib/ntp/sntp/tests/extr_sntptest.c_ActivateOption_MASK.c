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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const,char**) ; 
 int /*<<< orphan*/  sntpOptions ; 

void
FUNC2(const char* option, const char* argument) {

	const int ARGV_SIZE = 4;

	char* opts[ARGV_SIZE];
	
	opts[0] = FUNC0("sntpopts");
	opts[1] = FUNC0(option);
	opts[2] = FUNC0(argument);
	opts[3] = FUNC0("127.0.0.1");

	FUNC1(&sntpOptions, ARGV_SIZE, opts);
}