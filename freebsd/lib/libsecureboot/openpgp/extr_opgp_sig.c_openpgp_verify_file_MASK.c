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
typedef  int /*<<< orphan*/  pbuf ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  R_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,unsigned char*,size_t,unsigned char*,size_t,int) ; 
 unsigned char* FUNC2 (char const*,size_t*) ; 
 char** sig_exts ; 
 int FUNC3 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

int
FUNC5(const char *filename, unsigned char *fdata, size_t nbytes)
{
	char pbuf[MAXPATHLEN];
	unsigned char *sdata;
	const char *sname = NULL;
	const char **ep;
	size_t sz;
	int n;

	for (ep = sig_exts; *ep; ep++) {
		n = FUNC3(pbuf, sizeof(pbuf), "%s%s", filename, *ep);
		if (n >= (int)sizeof(pbuf)) {
			FUNC4("cannot form signature name for %s", filename);
			return (-1);
		}
		if (FUNC0(pbuf, R_OK) == 0) {
			sname = pbuf;
			break;
		}
	}
	if (!sname) {
		FUNC4("cannot find signature for %s", filename);
		return (-1);
	}
	sdata = FUNC2(sname, &sz);
	return (FUNC1(filename, fdata, nbytes, sdata, sz, 1));
}