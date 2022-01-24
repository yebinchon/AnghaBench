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
struct pf_altq {scalar_t__ qid; } ;
struct pfioc_altq {unsigned int nr; struct pf_altq altq; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  pfioc ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGETALTQ ; 
 int /*<<< orphan*/  DIOCGETALTQS ; 
 scalar_t__ EBUSY ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PFIOC_ALTQ_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pf_altq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  altq_entries ; 
 int /*<<< orphan*/  FUNC1 (struct pfioc_altq*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  entries ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct pfioc_altq*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 struct pf_altq* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(void)
{
	struct pfioc_altq pfioc;
	struct pf_altq *altq;
	int pffd;
	unsigned int mnr;
	static int altq_fetched = 0;

	if (altq_fetched)
		return;
	altq_fetched = 1;
	pffd = FUNC4("/dev/pf", O_RDONLY);
	if (pffd == -1) {
		FUNC6("altq support opening pf(4) control device");
		return;
	}
	FUNC1(&pfioc, sizeof(pfioc));
	pfioc.version = PFIOC_ALTQ_VERSION;
	if (FUNC3(pffd, DIOCGETALTQS, &pfioc) != 0) {
		FUNC6("altq support getting queue list");
		FUNC2(pffd);
		return;
	}
	mnr = pfioc.nr;
	for (pfioc.nr = 0; pfioc.nr < mnr; pfioc.nr++) {
		if (FUNC3(pffd, DIOCGETALTQ, &pfioc) != 0) {
			if (errno == EBUSY)
				break;
			FUNC6("altq support getting queue list");
			FUNC2(pffd);
			return;
		}
		if (pfioc.altq.qid == 0)
			continue;
		altq = FUNC5(1, sizeof(*altq));
		*altq = pfioc.altq;
		FUNC0(&altq_entries, altq, entries);
	}
	FUNC2(pffd);
}