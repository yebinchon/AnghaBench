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
struct wpa_freq_range_list {int num; struct wpa_freq_range* range; } ;
struct wpa_freq_range {scalar_t__ min; scalar_t__ max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int FUNC2 (char*,int,char*,char*,scalar_t__,...) ; 
 scalar_t__ FUNC3 (int,int) ; 

char * FUNC4(const struct wpa_freq_range_list *list)
{
	char *buf, *pos, *end;
	size_t maxlen;
	unsigned int i;
	int res;

	if (list->num == 0)
		return NULL;

	maxlen = list->num * 30;
	buf = FUNC1(maxlen);
	if (buf == NULL)
		return NULL;
	pos = buf;
	end = buf + maxlen;

	for (i = 0; i < list->num; i++) {
		struct wpa_freq_range *range = &list->range[i];

		if (range->min == range->max)
			res = FUNC2(pos, end - pos, "%s%u",
					  i == 0 ? "" : ",", range->min);
		else
			res = FUNC2(pos, end - pos, "%s%u-%u",
					  i == 0 ? "" : ",",
					  range->min, range->max);
		if (FUNC3(end - pos, res)) {
			FUNC0(buf);
			return NULL;
		}
		pos += res;
	}

	return buf;
}