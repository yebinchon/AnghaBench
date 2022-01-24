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
struct stat {int dummy; } ;
struct ifreq {int /*<<< orphan*/  ifr_name; } ;
typedef  int* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int N_PPP ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  TIOCSETD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC8 (void)
{
#ifdef __linux__
	int s, p;
	struct ifreq ifr;
	char pttyname[32];
	char *p1, *p2;
	int i, j;
	int ppp_disc = N_PPP;

	/*
	 * Open a socket for doing the ioctl operations.
	 */
	s = FUNC4 (AF_INET, SOCK_DGRAM, 0);
	if (s < 0) {
		FUNC1 (stderr, "Error opening socket.\n");
		return 0;
	}
	FUNC7 (ifr.ifr_name, "ppp0", sizeof (ifr.ifr_name));
	if (FUNC2 (s, SIOCGIFFLAGS, (caddr_t) &ifr) >= 0) {
		/* Ok. */
		FUNC0 (s);
		return 1;
	}
	FUNC0 (s);

	/* open pseudo-tty and try to set PPP discipline */
	FUNC5 (pttyname, "/dev/ptyXX");
	p1 = &pttyname[8];
	p2 = &pttyname[9];
	for (i=0; i<16; i++) {
		struct stat stb;

		*p1 = "pqrstuvwxyzabcde"[i];
		*p2 = '0';
		if (FUNC6 (pttyname, &stb) < 0)
			continue;
		for (j=0; j<16; j++) {
			*p2 = "0123456789abcdef"[j];
			p = FUNC3 (pttyname, 2);
			if (p > 0) {
				if (FUNC2 (p, TIOCSETD, &ppp_disc) < 0) {
					FUNC1 (stderr, "No PPP discipline in kernel.\n");
					FUNC0 (p);
					return 0;
				}
				FUNC0 (p);
				return 1;
			}
		}
	}
	FUNC1 (stderr, "Cannot get pseudo-tty.\n");
	return 0;
#else
	return 1;
#endif
}