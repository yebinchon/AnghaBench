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

/* Variables and functions */
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (size_t,char**,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char*,size_t) ; 
 int /*<<< orphan*/  errno ; 
 size_t FUNC2 (char*,char const*) ; 

__attribute__((used)) static int
FUNC3(const u_char *msg, size_t msglen,
	const u_char **pp, const char *origin,
	char **buf, size_t *buflen)
{
	size_t newlen, save_buflen = *buflen;
	char *save_buf = *buf;
	int n;

	n = FUNC1(msg, msg + msglen, *pp, *buf, *buflen);
	if (n < 0)
		goto enospc;	/*%< Guess. */
	newlen = FUNC2(*buf, origin);
	if (**buf == '\0') {
		goto root;
	} else if (newlen == 0U) {
		/* Use "@" instead of name. */
		if (newlen + 2 > *buflen)
			goto enospc;        /* No room for "@\0". */
		(*buf)[newlen++] = '@';
		(*buf)[newlen] = '\0';
	} else {
		if (((origin == NULL || origin[0] == '\0') ||
		    (origin[0] != '.' && origin[1] != '\0' &&
		    (*buf)[newlen] == '\0')) && (*buf)[newlen - 1] != '.') {
			/* No trailing dot. */
 root:
			if (newlen + 2 > *buflen)
				goto enospc;	/* No room for ".\0". */
			(*buf)[newlen++] = '.';
			(*buf)[newlen] = '\0';
		}
	}
	*pp += n;
	FUNC0(newlen, buf, buflen);
	**buf = '\0';
	return (newlen);
 enospc:
	errno = ENOSPC;
	*buf = save_buf;
	*buflen = save_buflen;
	return (-1);
}