#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hv; } ;
typedef  TYPE_1__ sha1_digest ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  leapsec_reader ;
typedef  int /*<<< orphan*/  isc_sha1_t ;

/* Variables and functions */
 int LSVALID_BADFORMAT ; 
 int LSVALID_BADHASH ; 
 int LSVALID_GOODHASH ; 
 int LSVALID_NOHASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

int
FUNC9(
	leapsec_reader func,
	void *         farg)
{
	isc_sha1_t     mdctx;
	sha1_digest    rdig, ldig; /* remote / local digests */
	char           line[50];
	int            hlseen = -1;

	FUNC4(&mdctx);
	while (FUNC2(func, farg, line, sizeof(line))) {
		if (!FUNC8(line, "#h", 2))
			hlseen = FUNC1(&rdig, line+2);
		else if (!FUNC8(line, "#@", 2))
			FUNC0(&mdctx, line+2);
		else if (!FUNC8(line, "#$", 2))
			FUNC0(&mdctx, line+2);
		else if (FUNC6((unsigned char)line[0]))
			FUNC0(&mdctx, line);
	}
	FUNC3(&mdctx, ldig.hv);
	FUNC5(&mdctx);

	if (0 > hlseen)
		return LSVALID_NOHASH;
	if (0 == hlseen)
		return LSVALID_BADFORMAT;
	if (0 != FUNC7(&rdig, &ldig, sizeof(sha1_digest)))
		return LSVALID_BADHASH;
	return LSVALID_GOODHASH;
}