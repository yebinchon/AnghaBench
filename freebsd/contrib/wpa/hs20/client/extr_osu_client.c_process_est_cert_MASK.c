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
typedef  int /*<<< orphan*/  u8 ;
struct hs20_osu_client {int /*<<< orphan*/  xml; } ;
typedef  int /*<<< orphan*/  digest1 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int SHA256_MAC_LEN ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (char*,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 char const* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct hs20_osu_client*,char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC17(struct hs20_osu_client *ctx, xml_node_t *cert,
			    const char *fqdn)
{
	u8 digest1[SHA256_MAC_LEN], digest2[SHA256_MAC_LEN];
	char *der, *pem;
	size_t der_len, pem_len;
	char *fingerprint;
	char buf[200];

	FUNC13(MSG_INFO, "PPS for certificate credential - fqdn=%s", fqdn);

	fingerprint = FUNC15(ctx->xml, cert);
	if (fingerprint == NULL)
		return -1;
	if (FUNC3(fingerprint, digest1, SHA256_MAC_LEN) < 0) {
		FUNC13(MSG_INFO, "Invalid SHA256 hash value");
		FUNC14(ctx, "Invalid client certificate SHA256 hash value in PPS");
		FUNC16(ctx->xml, fingerprint);
		return -1;
	}
	FUNC16(ctx->xml, fingerprint);

	der = FUNC6("Cert/est_cert.der", &der_len);
	if (der == NULL) {
		FUNC13(MSG_INFO, "Could not find client certificate from EST");
		FUNC14(ctx, "Could not find client certificate from EST");
		return -1;
	}

	if (FUNC10(1, (const u8 **) &der, &der_len, digest2) < 0) {
		FUNC4(der);
		return -1;
	}
	FUNC4(der);

	if (FUNC5(digest1, digest2, sizeof(digest1)) != 0) {
		FUNC13(MSG_INFO, "Client certificate from EST does not match fingerprint from PPS MO");
		FUNC14(ctx, "Client certificate from EST does not match fingerprint from PPS MO");
		return -1;
	}

	FUNC13(MSG_INFO, "Client certificate from EST matches PPS MO");
	FUNC12("Cert/est_cert.der");

	FUNC7(buf, sizeof(buf), "SP/%s/client-ca.pem", fqdn);
	if (FUNC8("Cert/est-cacerts.pem", buf) < 0) {
		FUNC13(MSG_INFO, "Could not move est-cacerts.pem to client-ca.pem: %s",
			   FUNC11(errno));
		return -1;
	}
	pem = FUNC6(buf, &pem_len);

	FUNC7(buf, sizeof(buf), "SP/%s/client-cert.pem", fqdn);
	if (FUNC8("Cert/est_cert.pem", buf) < 0) {
		FUNC13(MSG_INFO, "Could not move est_cert.pem to client-cert.pem: %s",
			   FUNC11(errno));
		FUNC4(pem);
		return -1;
	}

	if (pem) {
		FILE *f = FUNC1(buf, "a");
		if (f) {
			FUNC2(pem, pem_len, 1, f);
			FUNC0(f);
		}
		FUNC4(pem);
	}

	FUNC7(buf, sizeof(buf), "SP/%s/client-key.pem", fqdn);
	if (FUNC8("Cert/privkey-plain.pem", buf) < 0) {
		FUNC13(MSG_INFO, "Could not move privkey-plain.pem to client-key.pem: %s",
			   FUNC11(errno));
		return -1;
	}

	FUNC12("Cert/est-req.b64");
	FUNC12("Cert/est-req.pem");
	FUNC9("Cert");

	return 0;
}