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
 scalar_t__ FUNC0 (char const*,char const) ; 

const char * FUNC1(const char *str, const char *delim, const char **last)
{
	const char *end, *token = str;

	if (!str || !delim || !last)
		return NULL;

	if (*last)
		token = *last;

	while (*token && FUNC0(delim, *token))
		token++;

	if (!*token)
		return NULL;

	end = token + 1;

	while (*end && !FUNC0(delim, *end))
		end++;

	*last = end;
	return token;
}