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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  pcap_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * stdin ; 

pcap_t *
FUNC6(const char *fname, u_int precision,
					char *errbuf)
{
	FILE *fp;
	pcap_t *p;

	if (fname == NULL) {
		FUNC5(errbuf, PCAP_ERRBUF_SIZE,
		    "A null pointer was supplied as the file name");
		return (NULL);
	}
	if (fname[0] == '-' && fname[1] == '\0')
	{
		fp = stdin;
#if defined(_WIN32) || defined(MSDOS)
		/*
		 * We're reading from the standard input, so put it in binary
		 * mode, as savefiles are binary files.
		 */
		SET_BINMODE(fp);
#endif
	}
	else {
		/*
		 * "b" is supported as of C90, so *all* UN*Xes should
		 * support it, even though it does nothing.  It's
		 * required on Windows, as the file is a binary file
		 * and must be read in binary mode.
		 */
		fp = FUNC2(fname, "rb");
		if (fp == NULL) {
			FUNC3(errbuf, PCAP_ERRBUF_SIZE,
			    errno, "%s", fname);
			return (NULL);
		}
	}
	p = FUNC4(fp, precision, errbuf);
	if (p == NULL) {
		if (fp != stdin)
			FUNC1(fp);
	}
	return (p);
}