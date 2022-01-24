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
typedef  int u_char ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int SIZE_MAX ; 
 char* FUNC0 (size_t) ; 
 size_t FUNC1 (struct sshbuf*) ; 
 int* FUNC2 (struct sshbuf*) ; 
 char* FUNC3 (char*) ; 

char *
FUNC4(struct sshbuf *buf)
{
	size_t i, j, len = FUNC1(buf);
	const u_char *p = FUNC2(buf);
	char *ret;
	const char hex[] = "0123456789abcdef";

	if (len == 0)
		return FUNC3("");
	if (SIZE_MAX / 2 <= len || (ret = FUNC0(len * 2 + 1)) == NULL)
		return NULL;
	for (i = j = 0; i < len; i++) {
		ret[j++] = hex[(p[i] >> 4) & 0xf];
		ret[j++] = hex[p[i] & 0xf];
	}
	ret[j] = '\0';
	return ret;
}