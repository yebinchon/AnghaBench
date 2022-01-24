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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int CTL_KERN ; 
 int KERN_HOSTNAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int*,int,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC2(void)
{
	static char buf[8192];
	int mib[2];
	size_t blen;

	mib[0] = CTL_KERN;
	mib[1] = KERN_HOSTNAME;
	blen = sizeof(buf);
	if (FUNC1(mib, 2, buf, &blen, NULL, 0) == -1)
		FUNC0("sysctl gethostname");

	return buf;
}