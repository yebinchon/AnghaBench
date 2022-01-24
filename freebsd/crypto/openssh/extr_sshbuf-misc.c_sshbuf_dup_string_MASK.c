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
typedef  int /*<<< orphan*/  u_char ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 size_t SIZE_MAX ; 
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,char,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC3 (struct sshbuf*) ; 
 int /*<<< orphan*/ * FUNC4 (struct sshbuf*) ; 

char *
FUNC5(struct sshbuf *buf)
{
	const u_char *p = NULL, *s = FUNC4(buf);
	size_t l = FUNC3(buf);
	char *r;

	if (s == NULL || l > SIZE_MAX)
		return NULL;
	/* accept a nul only as the last character in the buffer */
	if (l > 0 && (p = FUNC1(s, '\0', l)) != NULL) {
		if (p != s + l - 1)
			return NULL;
		l--; /* the nul is put back below */
	}
	if ((r = FUNC0(l + 1)) == NULL)
		return NULL;
	if (l > 0)
		FUNC2(r, s, l);
	r[l] = '\0';
	return r;
}