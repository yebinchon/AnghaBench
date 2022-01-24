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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,char const*,char const*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static char * FUNC3(const char *prev, const char *leaf)
{
	size_t len;
	char *new_uri;

	if (prev == NULL)
		return NULL;

	len = FUNC2(prev) + 1 + FUNC2(leaf) + 1;
	new_uri = FUNC0(len);
	if (new_uri)
		FUNC1(new_uri, len, "%s/%s", prev, leaf);

	return new_uri;
}