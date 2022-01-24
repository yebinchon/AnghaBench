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
struct subscription {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 char* FUNC0 (char const*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct subscription*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static void FUNC3(struct subscription *s,
				    const char *url_list)
{
	const char *end;
	FUNC2(MSG_DEBUG, "WPS UPnP: Parsing URL list '%s'", url_list);
	for (;;) {
		while (*url_list == ' ' || *url_list == '\t')
			url_list++;
		if (*url_list != '<')
			break;
		url_list++;
		end = FUNC0(url_list, '>');
		if (end == NULL)
			break;
		FUNC1(s, url_list, end - url_list);
		url_list = end + 1;
	}
}