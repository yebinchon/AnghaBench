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
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

const u_char *
FUNC3(const u_char *cp, const u_char *msg, int msglen, char *name,
    int namelen)
{
	int n, newlen;

	if ((n = FUNC0(msg, cp + msglen, cp, name, namelen)) < 0)
		return (NULL);
	newlen = FUNC2(name);
	if (newlen == 0 || name[newlen - 1] != '.') {
		if (newlen + 1 >= namelen)	/*%< Lack space for final dot */
			return (NULL);
		else
			FUNC1(name + newlen, ".");
	}
	return (cp + n);
}