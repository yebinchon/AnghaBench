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
 int EINVAL ; 
 scalar_t__ FUNC0 (char) ; 

int FUNC1(const char *params, char *buf, size_t buflen,
			     char **endp)
{
	size_t max_chars_to_copy;
	char *cur_dest;

	*endp = (char *) params;
	while (FUNC0(**endp))
		(*endp)++;
	if (!**endp || buflen <= 1)
		return -EINVAL;

	max_chars_to_copy = buflen - 1;
	/* We need 1 byte for the terminating zero */
	cur_dest = buf;
	while (**endp && !FUNC0(**endp) && max_chars_to_copy > 0) {
		*cur_dest = **endp;
		(*endp)++;
		cur_dest++;
		max_chars_to_copy--;
	}
	*cur_dest = 0;

	return 0;
}