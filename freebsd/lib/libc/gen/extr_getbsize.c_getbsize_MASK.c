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
typedef  int /*<<< orphan*/  header ;

/* Variables and functions */
 long GB ; 
 long KB ; 
 long MAXB ; 
 long MB ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,long,char const*) ; 
 int FUNC2 (char*) ; 
 long FUNC3 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

char *
FUNC5(int *headerlenp, long *blocksizep)
{
	static char header[20];
	long n, max, mul, blocksize;
	char *ep, *p;
	const char *form;

#define	KB	(1024L)
#define	MB	(1024L * 1024L)
#define	GB	(1024L * 1024L * 1024L)
#define	MAXB	GB		/* No tera, peta, nor exa. */
	form = "";
	if ((p = FUNC0("BLOCKSIZE")) != NULL && *p != '\0') {
		if ((n = FUNC3(p, &ep, 10)) < 0)
			goto underflow;
		if (n == 0)
			n = 1;
		if (*ep && ep[1])
			goto fmterr;
		switch (*ep) {
		case 'G': case 'g':
			form = "G";
			max = MAXB / GB;
			mul = GB;
			break;
		case 'K': case 'k':
			form = "K";
			max = MAXB / KB;
			mul = KB;
			break;
		case 'M': case 'm':
			form = "M";
			max = MAXB / MB;
			mul = MB;
			break;
		case '\0':
			max = MAXB;
			mul = 1;
			break;
		default:
fmterr:			FUNC4("%s: unknown blocksize", p);
			n = 512;
			max = MAXB;
			mul = 1;
			break;
		}
		if (n > max) {
			FUNC4("maximum blocksize is %ldG", MAXB / GB);
			n = max;
		}
		if ((blocksize = n * mul) < 512) {
underflow:		FUNC4("minimum blocksize is 512");
			form = "";
			blocksize = n = 512;
		}
	} else
		blocksize = n = 512;

	(void)FUNC1(header, sizeof(header), "%ld%s-blocks", n, form);
	*headerlenp = FUNC2(header);
	*blocksizep = blocksize;
	return (header);
}