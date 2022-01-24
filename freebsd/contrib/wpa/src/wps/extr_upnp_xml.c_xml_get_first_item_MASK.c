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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int) ; 
 char* FUNC4 (int) ; 
 scalar_t__ FUNC5 (char const*,char const**,char const**,char const**) ; 

char * FUNC6(const char *doc, const char *item)
{
	const char *match = item;
	int match_len = FUNC2(item);
	const char *tag, *tagname, *end;
	char *value;

	/*
	 * This is crude: ignore any possible tag name conflicts and go right
	 * to the first tag of this name. This should be ok for the limited
	 * domain of UPnP messages.
	 */
	for (;;) {
		if (FUNC5(doc, &tag, &tagname, &end))
			return NULL;
		doc = end;
		if (!FUNC3(tagname, match, match_len) &&
		    *tag != '/' &&
		    (tagname[match_len] == '>' ||
		     !FUNC0(tagname[match_len]))) {
			break;
		}
	}
	end = doc;
	while (*end && *end != '<')
		end++;
	value = FUNC4(1 + (end - doc));
	if (value == NULL)
		return NULL;
	FUNC1(value, doc, end - doc);
	return value;
}