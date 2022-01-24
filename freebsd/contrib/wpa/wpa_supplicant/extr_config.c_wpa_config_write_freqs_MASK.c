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
struct parse_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char*,int,char*,char*,int const) ; 
 scalar_t__ FUNC1 (int,int) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static char * FUNC3(const struct parse_data *data,
				     const int *freqs)
{
	char *buf, *pos, *end;
	int i, ret;
	size_t count;

	if (freqs == NULL)
		return NULL;

	count = 0;
	for (i = 0; freqs[i]; i++)
		count++;

	pos = buf = FUNC2(10 * count + 1);
	if (buf == NULL)
		return NULL;
	end = buf + 10 * count + 1;

	for (i = 0; freqs[i]; i++) {
		ret = FUNC0(pos, end - pos, "%s%u",
				  i == 0 ? "" : " ", freqs[i]);
		if (FUNC1(end - pos, ret)) {
			end[-1] = '\0';
			return buf;
		}
		pos += ret;
	}

	return buf;
}