#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ time_t ;
struct sshauthopt {scalar_t__ valid_before; int /*<<< orphan*/ * required_from_host_cert; int /*<<< orphan*/ * required_from_host_keys; scalar_t__ cert_authority; int /*<<< orphan*/ * cert_principals; } ;
struct ssh {int dummy; } ;
struct passwd {int /*<<< orphan*/  pw_name; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  use_dns; } ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 char* FUNC2 (struct ssh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct sshauthopt*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int /*<<< orphan*/ ,char const*,...) ; 
 int FUNC8 (char const*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__ options ; 
 char* FUNC9 (struct ssh*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11(struct ssh *ssh, struct passwd *pw,
    struct sshauthopt *opts, int allow_cert_authority, const char *loc)
{
	const char *remote_ip = FUNC9(ssh);
	const char *remote_host = FUNC2(ssh,
	    options.use_dns);
	time_t now = FUNC10(NULL);
	char buf[64];

	/*
	 * Check keys/principals file expiry time.
	 * NB. validity interval in certificate is handled elsewhere.
	 */
	if (opts->valid_before && now > 0 &&
	    opts->valid_before < (uint64_t)now) {
		FUNC6(opts->valid_before, buf, sizeof(buf));
		FUNC4("%s: entry expired at %s", loc, buf);
		FUNC1("%s: entry expired at %s", loc, buf);
		return -1;
	}
	/* Consistency checks */
	if (opts->cert_principals != NULL && !opts->cert_authority) {
		FUNC4("%s: principals on non-CA key", loc);
		FUNC1("%s: principals on non-CA key", loc);
		/* deny access */
		return -1;
	}
	/* cert-authority flag isn't valid in authorized_principals files */
	if (!allow_cert_authority && opts->cert_authority) {
		FUNC4("%s: cert-authority flag invalid here", loc);
		FUNC1("%s: cert-authority flag invalid here", loc);
		/* deny access */
		return -1;
	}

	/* Perform from= checks */
	if (opts->required_from_host_keys != NULL) {
		switch (FUNC8(remote_host, remote_ip,
		    opts->required_from_host_keys )) {
		case 1:
			/* Host name matches. */
			break;
		case -1:
		default:
			FUNC4("%s: invalid from criteria", loc);
			FUNC1("%s: invalid from criteria", loc);
			/* FALLTHROUGH */
		case 0:
			FUNC7("%s: Authentication tried for %.100s with "
			    "correct key but not from a permitted "
			    "host (host=%.200s, ip=%.200s, required=%.200s).",
			    loc, pw->pw_name, remote_host, remote_ip,
			    opts->required_from_host_keys);
			FUNC1("%s: Your host '%.200s' is not "
			    "permitted to use this key for login.",
			    loc, remote_host);
			/* deny access */
			return -1;
		}
	}
	/* Check source-address restriction from certificate */
	if (opts->required_from_host_cert != NULL) {
		switch (FUNC0(remote_ip,
		    opts->required_from_host_cert)) {
		case 1:
			/* accepted */
			break;
		case -1:
		default:
			/* invalid */
			FUNC5("%s: Certificate source-address invalid",
			    loc);
			/* FALLTHROUGH */
		case 0:
			FUNC7("%s: Authentication tried for %.100s with valid "
			    "certificate but not from a permitted source "
			    "address (%.200s).", loc, pw->pw_name, remote_ip);
			FUNC1("%s: Your address '%.200s' is not "
			    "permitted to use this certificate for login.",
			    loc, remote_ip);
			return -1;
		}
	}
	/*
	 *
	 * XXX this is spammy. We should report remotely only for keys
	 *     that are successful in actual auth attempts, and not PK_OK
	 *     tests.
	 */
	FUNC3(loc, opts, 1);

	return 0;
}