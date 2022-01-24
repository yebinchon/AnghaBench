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
typedef  int /*<<< orphan*/  xml_node_t ;
struct hs20_osu_client {int /*<<< orphan*/  xml; scalar_t__ server_dnsname_count; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int S_IRWXG ; 
 int S_IRWXU ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hs20_osu_client*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hs20_osu_client*,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 scalar_t__ FUNC9 (struct hs20_osu_client*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct hs20_osu_client*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,size_t,char*,char*) ; 
 char* FUNC12 (char*,char) ; 
 char* FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (char const*,char*,int) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (struct hs20_osu_client*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC21 (struct hs20_osu_client*,char*,...) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*) ; 

int FUNC27(struct hs20_osu_client *ctx, const char *uri,
		    xml_node_t *add_mo, char *fname, size_t fname_len)
{
	char *str;
	char *fqdn, *pos;
	xml_node_t *tnds, *mo, *cert;
	const char *name;
	int ret;

	if (FUNC15(uri, "./Wi-Fi/", 8) != 0) {
		FUNC19(MSG_INFO, "Unsupported location for addMO to add PPS MO: '%s'",
			   uri);
		FUNC20(ctx, "Unsupported location for addMO to add PPS MO: '%s'",
			     uri);
		return -1;
	}

	fqdn = FUNC13(uri + 8);
	if (fqdn == NULL)
		return -1;
	pos = FUNC12(fqdn, '/');
	if (pos) {
		if (FUNC8(pos, "/PerProviderSubscription") != 0) {
			FUNC19(MSG_INFO, "Unsupported location for addMO to add PPS MO (extra directory): '%s'",
				   uri);
			FUNC20(ctx, "Unsupported location for addMO to "
				     "add PPS MO (extra directory): '%s'", uri);
			FUNC3(fqdn);
			return -1;
		}
		*pos = '\0'; /* remove trailing slash and PPS node name */
	}
	FUNC19(MSG_INFO, "SP FQDN: %s", fqdn);

	if (!FUNC10(ctx, fqdn)) {
		FUNC19(MSG_INFO,
			   "FQDN '%s' for new PPS MO did not have suffix match with server's dNSName values, count: %d",
			   fqdn, (int) ctx->server_dnsname_count);
		FUNC20(ctx, "FQDN '%s' for new PPS MO did not have suffix match with server's dNSName values",
			     fqdn);
		FUNC3(fqdn);
		return -1;
	}

	if (!FUNC18(fqdn)) {
		FUNC19(MSG_INFO, "Invalid FQDN '%s'", fqdn);
		FUNC20(ctx, "Invalid FQDN '%s'", fqdn);
		FUNC3(fqdn);
		return -1;
	}

	FUNC5("SP", S_IRWXU);
	FUNC11(fname, fname_len, "SP/%s", fqdn);
	if (FUNC5(fname, S_IRWXU) < 0) {
		if (errno != EEXIST) {
			int err = errno;
			FUNC19(MSG_INFO, "mkdir(%s) failed: %s",
				   fname, FUNC14(err));
			FUNC3(fqdn);
			return -1;
		}
	}

	FUNC0("SP", S_IRWXU | S_IRWXG);
	FUNC0(fname, S_IRWXU | S_IRWXG);

	FUNC11(fname, fname_len, "SP/%s/pps.xml", fqdn);

	if (FUNC7(fname)) {
		FUNC19(MSG_INFO, "PPS file '%s' exists - reject addMO",
			   fname);
		FUNC20(ctx, "PPS file '%s' exists - reject addMO",
			     fname);
		FUNC3(fqdn);
		return -2;
	}
	FUNC19(MSG_INFO, "Using PPS file: %s", fname);

	str = FUNC25(ctx->xml, add_mo);
	if (str == NULL) {
		FUNC19(MSG_INFO, "Could not extract MO text");
		FUNC3(fqdn);
		return -1;
	}
	FUNC19(MSG_DEBUG, "[hs20] addMO text: '%s'", str);

	tnds = FUNC23(ctx->xml, str);
	FUNC26(ctx->xml, str);
	if (tnds == NULL) {
		FUNC19(MSG_INFO, "[hs20] Could not parse addMO text");
		FUNC3(fqdn);
		return -1;
	}

	mo = FUNC16(ctx->xml, tnds);
	if (mo == NULL) {
		FUNC19(MSG_INFO, "[hs20] Could not parse addMO TNDS text");
		FUNC3(fqdn);
		return -1;
	}

	FUNC1(ctx, "Parsed TNDS", mo);

	name = FUNC24(ctx->xml, mo);
	if (FUNC8(name, "PerProviderSubscription") != 0) {
		FUNC19(MSG_INFO, "[hs20] Unexpected PPS MO root node name '%s'",
			   name);
		FUNC3(fqdn);
		return -1;
	}

	cert = FUNC4(ctx->xml, mo,
			      "Credential/DigitalCertificate/"
			      "CertSHA256Fingerprint");
	if (cert && FUNC9(ctx, cert, fqdn) < 0) {
		FUNC22(ctx->xml, mo);
		FUNC3(fqdn);
		return -1;
	}
	FUNC3(fqdn);

	if (FUNC6(ctx->xml, fname, mo) < 0) {
		FUNC19(MSG_INFO, "Could not write MO to file");
		FUNC22(ctx->xml, mo);
		return -1;
	}
	FUNC22(ctx->xml, mo);

	FUNC19(MSG_INFO, "A new PPS MO added as '%s'", fname);
	FUNC21(ctx, "A new PPS MO added as '%s'", fname);

	ret = FUNC2(ctx, fname);
	if (ret < 0) {
		FUNC19(MSG_INFO, "Remove invalid PPS MO file");
		FUNC21(ctx, "Remove invalid PPS MO file");
		FUNC17(fname);
	}

	return ret;
}