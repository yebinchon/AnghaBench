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
typedef  char u_char ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sshbuf* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sshbuf*,int) ; 
 int FUNC3 (struct sshbuf*) ; 
 char* FUNC4 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct sshbuf*,int /*<<< orphan*/ ) ; 

struct sshbuf *
FUNC6(const char *name)
{
	struct sshbuf *ret = FUNC1(name);
	const u_char *p;

	/* Trim whitespace at EOL */
	for (p = FUNC4(ret); FUNC3(ret) > 0;) {
		if (p[FUNC3(ret) - 1] == '\r' ||
		    p[FUNC3(ret) - 1] == '\t' ||
		    p[FUNC3(ret) - 1] == ' ' ||
		    p[FUNC3(ret) - 1] == '\n')
			FUNC0(FUNC2(ret, 1), 0);
		else
			break;
	}
	/* \0 terminate */
	FUNC0(FUNC5(ret, 0), 0);
	return ret;
}