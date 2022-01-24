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

/* Variables and functions */
 char* __progname ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC1(void)
{
	FUNC0(stderr, "usage: %s [options] [file ...]\n", __progname);
	FUNC0(stderr, "Options:\n");
	FUNC0(stderr, "  -l          List fingerprints of all identities.\n");
	FUNC0(stderr, "  -E hash     Specify hash algorithm used for fingerprints.\n");
	FUNC0(stderr, "  -L          List public key parameters of all identities.\n");
	FUNC0(stderr, "  -k          Load only keys and not certificates.\n");
	FUNC0(stderr, "  -c          Require confirmation to sign using identities\n");
	FUNC0(stderr, "  -m minleft  Maxsign is only changed if less than minleft are left (for XMSS)\n");
	FUNC0(stderr, "  -M maxsign  Maximum number of signatures allowed (for XMSS)\n");
	FUNC0(stderr, "  -t life     Set lifetime (in seconds) when adding identities.\n");
	FUNC0(stderr, "  -d          Delete identity.\n");
	FUNC0(stderr, "  -D          Delete all identities.\n");
	FUNC0(stderr, "  -x          Lock agent.\n");
	FUNC0(stderr, "  -X          Unlock agent.\n");
	FUNC0(stderr, "  -s pkcs11   Add keys from PKCS#11 provider.\n");
	FUNC0(stderr, "  -e pkcs11   Remove keys provided by PKCS#11 provider.\n");
	FUNC0(stderr, "  -q          Be quiet after a successful operation.\n");
}