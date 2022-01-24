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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (char*,unsigned char*,size_t,unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char const*) ; 
 size_t FUNC5 (char*) ; 
 char** ta_ASC ; 
 char** vc_ASC ; 

int
FUNC6(void)
{
	static int rc = -1;		/* remember result */
#ifdef HAVE_VC_ASC
	const char **vp, **tp;
	char *fdata, *sdata = NULL;
	size_t fbytes, sbytes;

	if (openpgp_trust_init() > 0) {
		for (tp = ta_ASC, vp = vc_ASC; *tp && *vp && rc; tp++, vp++) {
			if ((fdata = strdup(*tp)) &&
			    (sdata = strdup(*vp))) {
				fbytes = strlen(fdata);
				sbytes = strlen(sdata);
				rc = openpgp_verify("ta_ASC",
				    (unsigned char *)fdata, fbytes,
				    (unsigned char *)sdata, sbytes, 0);
				printf("Testing verify OpenPGP signature:\t\t%s\n",
				    rc ? "Failed" : "Passed");
			}
			free(fdata);
			free(sdata);
		}
	}
#endif
	return (rc);
}