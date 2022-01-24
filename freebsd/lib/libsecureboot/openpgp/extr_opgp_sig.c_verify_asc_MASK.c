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
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 scalar_t__ FUNC1 (char*,unsigned char*,size_t,unsigned char*,size_t,int) ; 
 unsigned char* FUNC2 (char const*,size_t*) ; 
 size_t FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char*,char) ; 

unsigned char *
FUNC5(const char *sigfile, int flags)
{
	char pbuf[MAXPATHLEN];
	char *cp;
	size_t n;
	unsigned char *fdata, *sdata;
	size_t fbytes, sbytes;
    
	if ((sdata = FUNC2(sigfile, &sbytes))) {
		n = FUNC3(pbuf, sigfile, sizeof(pbuf));
		if ((cp = FUNC4(pbuf, '.')))
			*cp = '\0';
		if ((fdata = FUNC2(pbuf, &fbytes))) {
			if (FUNC1(pbuf, fdata, fbytes, sdata,
				sbytes, flags)) {
				FUNC0(fdata);
				fdata = NULL;
			}
		}
	} else
		fdata = NULL;
	FUNC0(sdata);
	return (fdata);
}