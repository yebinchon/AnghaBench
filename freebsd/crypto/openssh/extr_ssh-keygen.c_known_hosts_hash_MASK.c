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
struct known_hosts_ctx {int has_unhashed; int invalid; int /*<<< orphan*/  out; } ;
struct hostkey_foreach_line {int status; char* line; char* rawkey; int /*<<< orphan*/  linenum; int /*<<< orphan*/  path; int /*<<< orphan*/ * hosts; int /*<<< orphan*/  marker; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_DELIM ; 
#define  HKF_STATUS_INVALID 130 
#define  HKF_STATUS_MATCHED 129 
#define  HKF_STATUS_OK 128 
 int /*<<< orphan*/  MRK_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  find_host ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char**,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct hostkey_foreach_line *l, void *_ctx)
{
	struct known_hosts_ctx *ctx = (struct known_hosts_ctx *)_ctx;
	char *hashed, *cp, *hosts, *ohosts;
	int has_wild = l->hosts && FUNC6(l->hosts, "*?!") != FUNC7(l->hosts);
	int was_hashed = l->hosts && l->hosts[0] == HASH_DELIM;

	switch (l->status) {
	case HKF_STATUS_OK:
	case HKF_STATUS_MATCHED:
		/*
		 * Don't hash hosts already already hashed, with wildcard
		 * characters or a CA/revocation marker.
		 */
		if (was_hashed || has_wild || l->marker != MRK_NONE) {
			FUNC1(ctx->out, "%s\n", l->line);
			if (has_wild && !find_host) {
				FUNC4("%s:%lu: ignoring host name "
				    "with wildcard: %.64s", l->path,
				    l->linenum, l->hosts);
			}
			return 0;
		}
		/*
		 * Split any comma-separated hostnames from the host list,
		 * hash and store separately.
		 */
		ohosts = hosts = FUNC9(l->hosts);
		while ((cp = FUNC8(&hosts, ",")) != NULL && *cp != '\0') {
			FUNC5(cp);
			if ((hashed = FUNC3(cp, NULL, 0)) == NULL)
				FUNC0("hash_host failed");
			FUNC1(ctx->out, "%s %s\n", hashed, l->rawkey);
			ctx->has_unhashed = 1;
		}
		FUNC2(ohosts);
		return 0;
	case HKF_STATUS_INVALID:
		/* Retain invalid lines, but mark file as invalid. */
		ctx->invalid = 1;
		FUNC4("%s:%lu: invalid line", l->path, l->linenum);
		/* FALLTHROUGH */
	default:
		FUNC1(ctx->out, "%s\n", l->line);
		return 0;
	}
	/* NOTREACHED */
	return -1;
}