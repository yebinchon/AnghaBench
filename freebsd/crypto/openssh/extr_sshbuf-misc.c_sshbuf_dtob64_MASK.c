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
 int SIZE_MAX ; 
 int FUNC0 (int /*<<< orphan*/  const*,size_t,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 size_t FUNC4 (struct sshbuf*) ; 
 int /*<<< orphan*/ * FUNC5 (struct sshbuf*) ; 
 char* FUNC6 (char*) ; 

char *
FUNC7(struct sshbuf *buf)
{
	size_t len = FUNC4(buf), plen;
	const u_char *p = FUNC5(buf);
	char *ret;
	int r;

	if (len == 0)
		return FUNC6("");
	plen = ((len + 2) / 3) * 4 + 1;
	if (SIZE_MAX / 2 <= len || (ret = FUNC3(plen)) == NULL)
		return NULL;
	if ((r = FUNC0(p, len, ret, plen)) == -1) {
		FUNC1(ret, plen);
		FUNC2(ret);
		return NULL;
	}
	return ret;
}