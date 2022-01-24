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
struct hs20_osu_client {char const* fqdn; char const* ca_fname; int client_cert_present; int /*<<< orphan*/  xml; int /*<<< orphan*/  ifname; } ;
typedef  int /*<<< orphan*/  pps_fname_buf ;
typedef  int /*<<< orphan*/  client_key_buf ;
typedef  int /*<<< orphan*/  client_cert_buf ;
typedef  int /*<<< orphan*/  ca_fname_buf ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hs20_osu_client*,int /*<<< orphan*/ *,char*,char**,char**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct hs20_osu_client*,char const*,char const*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 void* FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct hs20_osu_client*,char const*,char const*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct hs20_osu_client*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC20(struct hs20_osu_client *ctx, const char *address,
		       const char *pps_fname, const char *ca_fname)
{
	xml_node_t *pps, *node;
	char pps_fname_buf[300];
	char ca_fname_buf[200];
	char *cred_username = NULL;
	char *cred_password = NULL;
	char *sub_rem_uri = NULL;
	char client_cert_buf[200];
	char *client_cert = NULL;
	char client_key_buf[200];
	char *client_key = NULL;
	int spp;

	FUNC15(MSG_INFO, "Subscription remediation requested with Server URL: %s",
		   address);

	if (!pps_fname) {
		char buf[256];
		FUNC15(MSG_INFO, "Determining PPS file based on Home SP information");
		if (FUNC11(address, "fqdn=", 5) == 0) {
			FUNC15(MSG_INFO, "Use requested FQDN from command line");
			FUNC7(buf, sizeof(buf), "%s", address + 5);
			address = NULL;
		} else if (FUNC2(ctx->ifname, "provisioning_sp", buf,
					  sizeof(buf)) < 0) {
			FUNC15(MSG_INFO, "Could not get provisioning Home SP FQDN from wpa_supplicant");
			return -1;
		}
		FUNC6(ctx->fqdn);
		ctx->fqdn = FUNC10(buf);
		if (ctx->fqdn == NULL)
			return -1;
		FUNC15(MSG_INFO, "Home SP FQDN for current credential: %s",
			   buf);
		FUNC7(pps_fname_buf, sizeof(pps_fname_buf),
			    "SP/%s/pps.xml", ctx->fqdn);
		pps_fname = pps_fname_buf;

		FUNC7(ca_fname_buf, sizeof(ca_fname_buf), "SP/%s/ca.pem",
			    ctx->fqdn);
		ca_fname = ca_fname_buf;
	}

	if (!FUNC5(pps_fname)) {
		FUNC15(MSG_INFO, "PPS file '%s' does not exist or is not accessible",
			   pps_fname);
		return -1;
	}
	FUNC15(MSG_INFO, "Using PPS file: %s", pps_fname);

	if (ca_fname && !FUNC5(ca_fname)) {
		FUNC15(MSG_INFO, "CA file '%s' does not exist or is not accessible",
			   ca_fname);
		return -1;
	}
	FUNC15(MSG_INFO, "Using server trust root: %s", ca_fname);
	ctx->ca_fname = ca_fname;

	pps = FUNC3(ctx->xml, pps_fname);
	if (pps == NULL) {
		FUNC15(MSG_INFO, "Could not read PPS MO");
		return -1;
	}

	if (!ctx->fqdn) {
		char *tmp;
		node = FUNC0(ctx->xml, pps, "HomeSP/FQDN");
		if (node == NULL) {
			FUNC15(MSG_INFO, "No HomeSP/FQDN found from PPS");
			return -1;
		}
		tmp = FUNC18(ctx->xml, node);
		if (tmp == NULL) {
			FUNC15(MSG_INFO, "No HomeSP/FQDN text found from PPS");
			return -1;
		}
		ctx->fqdn = FUNC10(tmp);
		FUNC19(ctx->xml, tmp);
		if (!ctx->fqdn) {
			FUNC15(MSG_INFO, "No FQDN known");
			return -1;
		}
	}

	node = FUNC0(ctx->xml, pps,
			      "SubscriptionUpdate/UpdateMethod");
	if (node) {
		char *tmp;
		tmp = FUNC18(ctx->xml, node);
		if (tmp && FUNC8(tmp, "OMA-DM-ClientInitiated") == 0)
			spp = 0;
		else
			spp = 1;
	} else {
		FUNC15(MSG_INFO, "No UpdateMethod specified - assume SPP");
		spp = 1;
	}

	FUNC1(ctx, pps, "SubscriptionUpdate/UsernamePassword",
		    &cred_username, &cred_password);
	if (cred_username)
		FUNC15(MSG_INFO, "Using username: %s", cred_username);
	if (cred_password)
		FUNC15(MSG_DEBUG, "Using password: %s", cred_password);

	if (cred_username == NULL && cred_password == NULL &&
	    FUNC0(ctx->xml, pps, "Credential/DigitalCertificate")) {
		FUNC15(MSG_INFO, "Using client certificate");
		FUNC7(client_cert_buf, sizeof(client_cert_buf),
			    "SP/%s/client-cert.pem", ctx->fqdn);
		client_cert = client_cert_buf;
		FUNC7(client_key_buf, sizeof(client_key_buf),
			    "SP/%s/client-key.pem", ctx->fqdn);
		client_key = client_key_buf;
		ctx->client_cert_present = 1;
	}

	node = FUNC0(ctx->xml, pps, "SubscriptionUpdate/URI");
	if (node) {
		sub_rem_uri = FUNC18(ctx->xml, node);
		if (sub_rem_uri &&
		    (!address || FUNC9(address, sub_rem_uri) != 0)) {
			FUNC15(MSG_INFO, "Override sub rem URI based on PPS: %s",
				   sub_rem_uri);
			address = sub_rem_uri;
		}
	}
	if (!address) {
		FUNC15(MSG_INFO, "Server URL not known");
		return -1;
	}

	FUNC16(ctx, "Wait for IP address for subscriptiom remediation");
	FUNC15(MSG_INFO, "Wait for IP address before starting subscription remediation");

	if (FUNC14(ctx->ifname, 15) < 0) {
		FUNC15(MSG_INFO, "Could not get IP address for WLAN - try connection anyway");
	}

	if (spp)
		FUNC12(ctx, address, pps_fname,
			    client_cert, client_key,
			    cred_username, cred_password, pps);
	else
		FUNC4(ctx, address, pps_fname,
			       client_cert, client_key,
			       cred_username, cred_password, pps);

	FUNC19(ctx->xml, sub_rem_uri);
	FUNC19(ctx->xml, cred_username);
	FUNC13(cred_password);
	FUNC17(ctx->xml, pps);
	return 0;
}