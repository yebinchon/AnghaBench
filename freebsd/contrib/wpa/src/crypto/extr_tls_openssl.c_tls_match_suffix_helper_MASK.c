#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ stack_index_t ;
typedef  int /*<<< orphan*/  X509_NAME_ENTRY ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_10__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {TYPE_1__* dNSName; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ d; } ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ GENERAL_NAME ;
typedef  TYPE_4__ ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  GENERAL_NAME_free ; 
 scalar_t__ GEN_DNS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  NID_commonName ; 
 int /*<<< orphan*/  NID_subject_alt_name ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,size_t,int) ; 
 scalar_t__ FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC11(X509 *cert, const char *match,
				   size_t match_len, int full)
{
	GENERAL_NAME *gen;
	void *ext;
	int i;
	stack_index_t j;
	int dns_name = 0;
	X509_NAME *name;

	FUNC10(MSG_DEBUG, "TLS: Match domain against %s%s",
		   full ? "": "suffix ", match);

	ext = FUNC3(cert, NID_subject_alt_name, NULL, NULL);

	for (j = 0; ext && j < FUNC6(ext); j++) {
		gen = FUNC8(ext, j);
		if (gen->type != GEN_DNS)
			continue;
		dns_name++;
		FUNC9(MSG_DEBUG, "TLS: Certificate dNSName",
				  gen->d.dNSName->data,
				  gen->d.dNSName->length);
		if (FUNC5(gen->d.dNSName->data,
					gen->d.dNSName->length,
					match, match_len, full) == 1) {
			FUNC10(MSG_DEBUG, "TLS: %s in dNSName found",
				   full ? "Match" : "Suffix match");
			FUNC7(ext, GENERAL_NAME_free);
			return 1;
		}
	}
	FUNC7(ext, GENERAL_NAME_free);

	if (dns_name) {
		FUNC10(MSG_DEBUG, "TLS: None of the dNSName(s) matched");
		return 0;
	}

	name = FUNC4(cert);
	i = -1;
	for (;;) {
		X509_NAME_ENTRY *e;
		ASN1_STRING *cn;

		i = FUNC2(name, NID_commonName, i);
		if (i == -1)
			break;
		e = FUNC1(name, i);
		if (e == NULL)
			continue;
		cn = FUNC0(e);
		if (cn == NULL)
			continue;
		FUNC9(MSG_DEBUG, "TLS: Certificate commonName",
				  cn->data, cn->length);
		if (FUNC5(cn->data, cn->length,
					match, match_len, full) == 1) {
			FUNC10(MSG_DEBUG, "TLS: %s in commonName found",
				   full ? "Match" : "Suffix match");
			return 1;
		}
	}

	FUNC10(MSG_DEBUG, "TLS: No CommonName %smatch found",
		   full ? "": "suffix ");
	return 0;
}