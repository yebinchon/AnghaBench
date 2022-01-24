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
struct wpa_freq_range_list {unsigned int num; struct wpa_freq_range* range; } ;
struct wpa_freq_range {void* min; void* max; } ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_freq_range*) ; 
 struct wpa_freq_range* FUNC2 (struct wpa_freq_range*,unsigned int,int) ; 
 char* FUNC3 (char const*,char) ; 

int FUNC4(struct wpa_freq_range_list *res, const char *value)
{
	struct wpa_freq_range *freq = NULL, *n;
	unsigned int count = 0;
	const char *pos, *pos2, *pos3;

	/*
	 * Comma separated list of frequency ranges.
	 * For example: 2412-2432,2462,5000-6000
	 */
	pos = value;
	while (pos && pos[0]) {
		n = FUNC2(freq, count + 1,
				     sizeof(struct wpa_freq_range));
		if (n == NULL) {
			FUNC1(freq);
			return -1;
		}
		freq = n;
		freq[count].min = FUNC0(pos);
		pos2 = FUNC3(pos, '-');
		pos3 = FUNC3(pos, ',');
		if (pos2 && (!pos3 || pos2 < pos3)) {
			pos2++;
			freq[count].max = FUNC0(pos2);
		} else
			freq[count].max = freq[count].min;
		pos = pos3;
		if (pos)
			pos++;
		count++;
	}

	FUNC1(res->range);
	res->range = freq;
	res->num = count;

	return 0;
}