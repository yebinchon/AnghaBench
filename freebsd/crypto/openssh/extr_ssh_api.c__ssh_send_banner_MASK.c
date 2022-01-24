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
struct ssh {int dummy; } ;

/* Variables and functions */
 int SSH_ERR_ALLOC_FAIL ; 
 char* SSH_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssh*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(struct ssh *ssh, char **bannerp)
{
	char buf[256];
	int r;

	FUNC2(buf, sizeof buf, "SSH-2.0-%.100s\r\n", SSH_VERSION);
	if ((r = FUNC4(FUNC3(ssh), buf, FUNC6(buf))) != 0)
		return r;
	FUNC0(buf);
	FUNC1("Local version string %.100s", buf);
	if ((*bannerp = FUNC5(buf)) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	return 0;
}