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
struct s_spcl {scalar_t__ c_magic; } ;

/* Variables and functions */
 long TP_BSIZE ; 
 scalar_t__ blkcnt ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ host ; 
 int /*<<< orphan*/  mt ; 
 long ntrec ; 
 long numtrec ; 
 long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,long) ; 
 long FUNC3 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tapebuf ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,long) ; 

__attribute__((used)) static void
FUNC6(void)
{
	long i;

	for (i = 0; i < ntrec; i++)
		((struct s_spcl *)&tapebuf[i * TP_BSIZE])->c_magic = 0;
	blkcnt = 0;
#ifdef RRESTORE
	if (host)
		i = rmtread(tapebuf, ntrec * TP_BSIZE);
	else
#endif
		i = FUNC2(mt, tapebuf, ntrec * TP_BSIZE);

	if (i <= 0) {
		FUNC1(stderr, "tape read error: %s\n", FUNC4(errno));
		FUNC0(1);
	}
	if (i % TP_BSIZE != 0) {
		FUNC1(stderr, "Tape block size (%ld) %s (%ld)\n",
			i, "is not a multiple of dump block size", TP_BSIZE);
		FUNC0(1);
	}
	ntrec = i / TP_BSIZE;
	numtrec = ntrec;
	FUNC5(stdout, "Tape block size is %ld\n", ntrec);
}