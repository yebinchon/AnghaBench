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
struct hs20_osu_client {int /*<<< orphan*/  xml; int /*<<< orphan*/  fqdn; scalar_t__ client_cert_present; } ;
typedef  int /*<<< orphan*/  backup ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (struct hs20_osu_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11(struct hs20_osu_client *ctx, const char *pps_fname,
		    xml_node_t *pps)
{
	char *str;
	FILE *f;
	char backup[300];

	if (ctx->client_cert_present) {
		xml_node_t *cert;
		cert = FUNC4(ctx->xml, pps,
				      "Credential/DigitalCertificate/"
				      "CertSHA256Fingerprint");
		if (cert && FUNC5("Cert/est_cert.der") &&
		    FUNC6(ctx, cert, ctx->fqdn) < 0) {
			FUNC9(MSG_INFO, "EST certificate update processing failed on PPS MO update");
			return -1;
		}
	}

	FUNC9(MSG_INFO, "Updating PPS MO %s", pps_fname);

	str = FUNC10(ctx->xml, pps);
	if (str == NULL) {
		FUNC9(MSG_ERROR, "No node found");
		return -1;
	}
	FUNC9(MSG_MSGDUMP, "[hs20] Updated PPS: '%s'", str);

	FUNC8(backup, sizeof(backup), "%s.bak", pps_fname);
	FUNC7(pps_fname, backup);
	f = FUNC1(pps_fname, "w");
	if (f == NULL) {
		FUNC9(MSG_INFO, "Could not write PPS");
		FUNC7(backup, pps_fname);
		FUNC3(str);
		return -1;
	}
	FUNC2(f, "%s\n", str);
	FUNC0(f);

	FUNC3(str);

	return 0;
}