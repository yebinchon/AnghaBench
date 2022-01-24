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
struct edns_option {struct edns_option* next; int /*<<< orphan*/  opt_len; int /*<<< orphan*/  opt_data; int /*<<< orphan*/  opt_code; } ;
typedef  int /*<<< orphan*/  str ;
typedef  enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int verbosity ; 

void
FUNC2(enum verbosity_value level, const char* info_str,
	struct edns_option* list)
{
	if(verbosity >= level && list) {
		char str[128], *s;
		size_t slen;
		FUNC1(level, "%s", info_str);
		while(list) {
			s = str;
			slen = sizeof(str);
			(void)FUNC0(&s, &slen, list->opt_code,
				list->opt_data, list->opt_len);
			FUNC1(level, "  %s", str);
			list = list->next;
		}
	}
}