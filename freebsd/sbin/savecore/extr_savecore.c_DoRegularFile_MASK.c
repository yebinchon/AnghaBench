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
typedef  int off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BLOCKMASK ; 
 int BLOCKSIZE ; 
 int BUFFERSIZE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ got_siginfo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  nerr ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int
FUNC7(int fd, off_t dumpsize, u_int sectorsize, bool sparse, char *buf,
    const char *device, const char *filename, FILE *fp)
{
	int he, hs, nr, nw, wl;
	off_t dmpcnt, origsize;

	dmpcnt = 0;
	origsize = dumpsize;
	he = 0;
	while (dumpsize > 0) {
		wl = BUFFERSIZE;
		if (wl > dumpsize)
			wl = dumpsize;
		nr = FUNC5(fd, buf, FUNC6(wl, sectorsize));
		if (nr != (int)FUNC6(wl, sectorsize)) {
			if (nr == 0)
				FUNC3(LOG_WARNING,
				    "WARNING: EOF on dump device");
			else
				FUNC3(LOG_ERR, "read error on %s: %m", device);
			nerr++;
			return (-1);
		}
		if (!sparse) {
			nw = FUNC2(buf, 1, wl, fp);
		} else {
			for (nw = 0; nw < nr; nw = he) {
				/* find a contiguous block of zeroes */
				for (hs = nw; hs < nr; hs += BLOCKSIZE) {
					for (he = hs; he < nr && buf[he] == 0;
					    ++he)
						/* nothing */ ;
					/* is the hole long enough to matter? */
					if (he >= hs + BLOCKSIZE)
						break;
				}

				/* back down to a block boundary */
				he &= BLOCKMASK;

				/*
				 * 1) Don't go beyond the end of the buffer.
				 * 2) If the end of the buffer is less than
				 *    BLOCKSIZE bytes away, we're at the end
				 *    of the file, so just grab what's left.
				 */
				if (hs + BLOCKSIZE > nr)
					hs = he = nr;

				/*
				 * At this point, we have a partial ordering:
				 *     nw <= hs <= he <= nr
				 * If hs > nw, buf[nw..hs] contains non-zero
				 * data. If he > hs, buf[hs..he] is all zeroes.
				 */
				if (hs > nw)
					if (FUNC2(buf + nw, hs - nw, 1, fp)
					    != 1)
					break;
				if (he > hs)
					if (FUNC1(fp, he - hs, SEEK_CUR) == -1)
						break;
			}
		}
		if (nw != wl) {
			FUNC3(LOG_ERR,
			    "write error on %s file: %m", filename);
			FUNC3(LOG_WARNING,
			    "WARNING: vmcore may be incomplete");
			nerr++;
			return (-1);
		}
		if (verbose) {
			dmpcnt += wl;
			FUNC4("%llu\r", (unsigned long long)dmpcnt);
			FUNC0(stdout);
		}
		dumpsize -= wl;
		if (got_siginfo) {
			FUNC4("%s %.1lf%%\n", filename, (100.0 - (100.0 *
			    (double)dumpsize / (double)origsize)));
			got_siginfo = 0;
		}
	}
	return (0);
}