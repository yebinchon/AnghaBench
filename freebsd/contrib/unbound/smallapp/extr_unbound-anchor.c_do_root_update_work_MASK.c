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
struct ub_result {int rcode; scalar_t__ secure; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,int,int,int) ; 
 struct ub_result* FUNC1 (char const*,char const*,char const*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ub_result*) ; 
 scalar_t__ verb ; 

__attribute__((used)) static int
FUNC6(const char* root_anchor_file, const char* root_cert_file,
	const char* urlname, const char* xmlname, const char* p7sname,
	const char* p7signer, const char* res_conf, const char* root_hints,
	const char* debugconf, int ip4only, int ip6only, int force,
	int res_conf_fallback, int port)
{
	struct ub_result* dnskey;
	int used_builtin = 0;
	int rcode;

	/* see if builtin rootanchor needs to be provided, or if
	 * rootanchor is 'revoked-trust-point' */
	if(!FUNC4(root_anchor_file, &used_builtin))
		return 0;

	/* make unbound context with 5011-probe for root anchor,
	 * and probe . DNSKEY */
	dnskey = FUNC1(root_anchor_file, res_conf,
		root_hints, debugconf, ip4only, ip6only);
	rcode = dnskey->rcode;

	if (res_conf_fallback && res_conf && !dnskey->secure) {
		if (verb) FUNC2("%s failed, retrying direct\n", res_conf);
		FUNC5(dnskey);
		/* try direct query without res_conf */
		dnskey = FUNC1(root_anchor_file, NULL,
			root_hints, debugconf, ip4only, ip6only);
		if (rcode != 0 && dnskey->rcode == 0) {
			res_conf = NULL;
			rcode = 0;
		}
	}

	/* if secure: exit */
	if(dnskey->secure && !force) {
		if(verb) FUNC2("success: the anchor is ok\n");
		FUNC5(dnskey);
		return used_builtin;
	}
	if(force && verb) FUNC2("debug cert update forced\n");
	FUNC5(dnskey);

	/* if not (and NOERROR): check date and do certupdate */
	if((rcode == 0 &&
		FUNC3(root_anchor_file)) || force) {
		if(FUNC0(root_anchor_file, root_cert_file, urlname,
			xmlname, p7sname, p7signer, res_conf, root_hints,
			debugconf, ip4only, ip6only, port))
			return 1;
		return used_builtin;
	}
	if(verb) FUNC2("fail: the anchor is NOT ok and could not be fixed\n");
	return used_builtin;
}