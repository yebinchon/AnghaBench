#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WOLFSSL_X509_NAME_ENTRY ;
typedef  int /*<<< orphan*/  WOLFSSL_X509_NAME ;
typedef  int /*<<< orphan*/  WOLFSSL_X509 ;
struct TYPE_5__ {char const* data; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ WOLFSSL_ASN1_STRING ;
struct TYPE_6__ {scalar_t__ type; char const* obj; } ;
typedef  TYPE_2__ WOLFSSL_ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ALT_NAMES_OID ; 
 int /*<<< orphan*/  ASN_COMMON_NAME ; 
 scalar_t__ ASN_DNS_TYPE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int FUNC8 (void*) ; 
 TYPE_2__* FUNC9 (void*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC12(WOLFSSL_X509 *cert, const char *match,
				   size_t match_len, int full)
{
	WOLFSSL_ASN1_OBJECT *gen;
	void *ext;
	int i;
	int j;
	int dns_name = 0;
	WOLFSSL_X509_NAME *name;

	FUNC11(MSG_DEBUG, "TLS: Match domain against %s%s",
		   full ? "" : "suffix ", match);

	ext = FUNC5(cert, ALT_NAMES_OID, NULL, NULL);

	for (j = 0; ext && j < FUNC8(ext); j++) {
		gen = FUNC9(ext, j);
		if (gen->type != ASN_DNS_TYPE)
			continue;
		dns_name++;
		FUNC10(MSG_DEBUG, "TLS: Certificate dNSName",
				  gen->obj, FUNC1((char *)gen->obj));
		if (FUNC0((const char *) gen->obj,
					FUNC1((char *) gen->obj), match,
					match_len, full) == 1) {
			FUNC11(MSG_DEBUG, "TLS: %s in dNSName found",
				   full ? "Match" : "Suffix match");
			FUNC7(ext);
			return 1;
		}
	}
	FUNC7(ext);

	if (dns_name) {
		FUNC11(MSG_DEBUG, "TLS: None of the dNSName(s) matched");
		return 0;
	}

	name = FUNC6(cert);
	i = -1;
	for (;;) {
		WOLFSSL_X509_NAME_ENTRY *e;
		WOLFSSL_ASN1_STRING *cn;

		i = FUNC4(name, ASN_COMMON_NAME,
						       i);
		if (i == -1)
			break;
		e = FUNC3(name, i);
		if (!e)
			continue;
		cn = FUNC2(e);
		if (!cn)
			continue;
		FUNC10(MSG_DEBUG, "TLS: Certificate commonName",
				  cn->data, cn->length);
		if (FUNC0(cn->data, cn->length,
					match, match_len, full) == 1) {
			FUNC11(MSG_DEBUG, "TLS: %s in commonName found",
				   full ? "Match" : "Suffix match");
			return 1;
		}
	}

	FUNC11(MSG_DEBUG, "TLS: No CommonName %smatch found",
		   full ? "" : "suffix ");
	return 0;
}