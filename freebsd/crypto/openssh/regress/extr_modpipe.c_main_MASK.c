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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct modification {size_t offset; int what; int /*<<< orphan*/  m2; int /*<<< orphan*/  m1; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int MAX_MODIFICATIONS ; 
#define  MOD_AND_OR 129 
#define  MOD_XOR 128 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct modification*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 () ; 
 size_t FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

int
FUNC8(int argc, char **argv)
{
	int ch;
	u_char buf[8192];
	size_t total;
	ssize_t r, s, o;
	struct modification mods[MAX_MODIFICATIONS];
	u_int i, wflag = 0, num_mods = 0;

	while ((ch = FUNC3(argc, argv, "wm:")) != -1) {
		switch (ch) {
		case 'm':
			if (num_mods >= MAX_MODIFICATIONS)
				FUNC1(1, "Too many modifications");
			FUNC4(optarg, &(mods[num_mods++]));
			break;
		case 'w':
			wflag = 1;
			break;
		default:
			FUNC6();
			/* NOTREACHED */
		}
	}
	for (total = 0;;) {
		r = s = FUNC5(STDIN_FILENO, buf, sizeof(buf));
		if (r == 0)
			break;
		if (r < 0) {
			if (errno == EAGAIN || errno == EINTR)
				continue;
			FUNC0(1, "read");
		}
		for (i = 0; i < num_mods; i++) {
			if (mods[i].offset < total ||
			    mods[i].offset >= total + s)
				continue;
			switch (mods[i].what) {
			case MOD_XOR:
				buf[mods[i].offset - total] ^= mods[i].m1;
				break;
			case MOD_AND_OR:
				buf[mods[i].offset - total] &= mods[i].m1;
				buf[mods[i].offset - total] |= mods[i].m2;
				break;
			}
		}
		for (o = 0; o < s; o += r) {
			r = FUNC7(STDOUT_FILENO, buf, s - o);
			if (r == 0)
				break;
			if (r < 0) {
				if (errno == EAGAIN || errno == EINTR)
					continue;
				FUNC0(1, "write");
			}
		}
		total += s;
	}
	/* Warn if modifications not reached in input stream */
	r = 0;
	for (i = 0; wflag && i < num_mods; i++) {
		if (mods[i].offset < total)
			continue;
		r = 1;
		FUNC2(stderr, "modpipe: warning - mod %u not reached\n", i);
	}
	return r;
}