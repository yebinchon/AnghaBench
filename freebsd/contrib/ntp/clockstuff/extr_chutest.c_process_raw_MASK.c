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
typedef  int u_char ;
struct timezone {int dummy; } ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 scalar_t__ dofilter ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*,struct timezone*) ; 
 struct timeval lasttv ; 
 int /*<<< orphan*/  FUNC4 (char*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,struct timeval*) ; 
 int FUNC6 (int,int*,int) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC7(
	int s
	)
{
	u_char c;
	int n;
	struct timeval tv;
	struct timeval difftv;

	while ((n = FUNC6(s, &c, sizeof(char))) > 0) {
		(void) FUNC3(&tv, (struct timezone *)0);
		if (dofilter)
		    FUNC5((unsigned int)c, &tv);
		else {
			difftv.tv_sec = tv.tv_sec - lasttv.tv_sec;
			difftv.tv_usec = tv.tv_usec - lasttv.tv_usec;
			if (difftv.tv_usec < 0) {
				difftv.tv_sec--;
				difftv.tv_usec += 1000000;
			}
			(void) FUNC4("%02x\t%lu.%06lu\t%lu.%06lu\n",
				      c, tv.tv_sec, tv.tv_usec, difftv.tv_sec,
				      difftv.tv_usec);
			lasttv = tv;
		}
	}

	if (n == 0) {
		(void) FUNC2(stderr, "%s: zero returned on read\n", progname);
		FUNC1(1);
	} else
	    FUNC0("read()", "", "");
}