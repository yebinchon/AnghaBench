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
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
typedef  int volatile ssize_t ;
typedef  int volatile off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int volatile,int volatile) ; 
 int volatile bytes ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*,struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  ttyout ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (int,char*,int volatile) ; 

__attribute__((used)) static int
FUNC8(int infd, int outfd, char *buf, size_t bufsize,
	int rate_limit, int hash_interval)
{
	volatile off_t	hashc;
	ssize_t		inc, outc;
	char		*bufp;
	struct timeval	tvthen, tvnow, tvdiff;
	off_t		bufrem, bufchunk;
	int		serr;

	hashc = hash_interval;
	if (rate_limit)
		bufchunk = rate_limit;
	else
		bufchunk = bufsize;

	while (1) {
		if (rate_limit) {
			(void)FUNC2(&tvthen, NULL);
		}
		errno = 0;
		inc = outc = 0;
					/* copy bufchunk at a time */
		bufrem = bufchunk;
		while (bufrem > 0) {
			inc = FUNC4(infd, buf, FUNC0((off_t)bufsize, bufrem));
			if (inc <= 0)
				goto copy_done;
			bytes += inc;
			bufrem -= inc;
			bufp = buf;
			while (inc > 0) {
				outc = FUNC7(outfd, bufp, inc);
				if (outc < 0)
					goto copy_done;
				inc -= outc;
				bufp += outc;
			}
			if (hash_interval) {
				while (bytes >= hashc) {
					(void)FUNC3('#', ttyout);
					hashc += hash_interval;
				}
				(void)FUNC1(ttyout);
			}
		}
		if (rate_limit) {	/* rate limited; wait if necessary */
			while (1) {
				(void)FUNC2(&tvnow, NULL);
				FUNC5(&tvnow, &tvthen, &tvdiff);
				if (tvdiff.tv_sec > 0)
					break;
				FUNC6(1000000 - tvdiff.tv_usec);
			}
		}
	}

 copy_done:
	serr = errno;
	if (hash_interval && bytes > 0) {
		if (bytes < hash_interval)
			(void)FUNC3('#', ttyout);
		(void)FUNC3('\n', ttyout);
		(void)FUNC1(ttyout);
	}
	errno = serr;
	if (inc == -1)
		return 1;
	if (outc == -1)
		return 2;

	return 0;
}