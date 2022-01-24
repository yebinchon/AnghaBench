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
 int code ; 
 int hash ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(int argc, char **argv)
{

	hash = !hash;
	FUNC1("Hash mark printing %s", FUNC0(hash));
	code = hash;
	if (hash)
		FUNC1(" (%d bytes/hash mark)", 1024);
	FUNC1(".\n");
}