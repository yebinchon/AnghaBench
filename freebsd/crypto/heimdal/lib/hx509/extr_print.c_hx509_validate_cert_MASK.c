#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
struct cert_status {int selfsigned; int /*<<< orphan*/  haveCRLDP; scalar_t__ haveSAN; scalar_t__ haveIAN; scalar_t__ isproxy; scalar_t__ isca; int /*<<< orphan*/  haveSKI; int /*<<< orphan*/  haveAKI; } ;
typedef  int /*<<< orphan*/  status ;
typedef  TYPE_3__* hx509_validate_ctx ;
typedef  int /*<<< orphan*/  hx509_name ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;
struct TYPE_20__ {int /*<<< orphan*/  extnID; scalar_t__ critical; } ;
struct TYPE_15__ {int /*<<< orphan*/  notAfter; int /*<<< orphan*/  notBefore; } ;
struct TYPE_18__ {int* version; int /*<<< orphan*/  _save; TYPE_2__* extensions; TYPE_1__ validity; } ;
struct TYPE_19__ {int /*<<< orphan*/  signatureValue; TYPE_4__ tbsCertificate; int /*<<< orphan*/  signatureAlgorithm; } ;
struct TYPE_17__ {int flags; } ;
struct TYPE_16__ {size_t len; TYPE_8__* val; } ;
struct TYPE_14__ {int /*<<< orphan*/  cf; int /*<<< orphan*/  (* func ) (TYPE_3__*,struct cert_status*,int /*<<< orphan*/ ,TYPE_8__*) ;int /*<<< orphan*/ * name; int /*<<< orphan*/  oid; } ;
typedef  TYPE_4__ TBSCertificate ;
typedef  TYPE_5__ Certificate ;

/* Variables and functions */
 int HX509_VALIDATE_F_VALIDATE ; 
 int HX509_VALIDATE_F_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int FUNC1 (TYPE_5__*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_11__* check_extension ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (struct cert_status*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,struct cert_status*,int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int,char*,...) ; 
 int /*<<< orphan*/  validate_vprint ; 

int
FUNC17(hx509_context context,
		    hx509_validate_ctx ctx,
		    hx509_cert cert)
{
    Certificate *c = FUNC2(cert);
    TBSCertificate *t = &c->tbsCertificate;
    hx509_name issuer, subject;
    char *str;
    struct cert_status status;
    int ret;

    FUNC14(&status, 0, sizeof(status));

    if (FUNC1(c) != 3)
	FUNC16(ctx, HX509_VALIDATE_F_VERBOSE,
		       "Not version 3 certificate\n");

    if ((t->version == NULL || *t->version < 2) && t->extensions)
	FUNC16(ctx, HX509_VALIDATE_F_VALIDATE,
		       "Not version 3 certificate with extensions\n");

    if (FUNC1(c) >= 3 && t->extensions == NULL)
	FUNC16(ctx, HX509_VALIDATE_F_VALIDATE,
		       "Version 3 certificate without extensions\n");

    ret = FUNC8(cert, &subject);
    if (ret) FUNC4();
    FUNC12(subject, &str);
    FUNC16(ctx, HX509_VALIDATE_F_VERBOSE,
		   "subject name: %s\n", str);
    FUNC6(str);

    ret = FUNC7(cert, &issuer);
    if (ret) FUNC4();
    FUNC12(issuer, &str);
    FUNC16(ctx, HX509_VALIDATE_F_VERBOSE,
		   "issuer name: %s\n", str);
    FUNC6(str);

    if (FUNC9(subject, issuer) == 0) {
	status.selfsigned = 1;
	FUNC16(ctx, HX509_VALIDATE_F_VERBOSE,
		       "\tis a self-signed certificate\n");
    }

    FUNC16(ctx, HX509_VALIDATE_F_VERBOSE,
		   "Validity:\n");

    FUNC0(&t->validity.notBefore, &str);
    FUNC16(ctx, HX509_VALIDATE_F_VERBOSE, "\tnotBefore %s\n", str);
    FUNC6(str);
    FUNC0(&t->validity.notAfter, &str);
    FUNC16(ctx, HX509_VALIDATE_F_VERBOSE, "\tnotAfter  %s\n", str);
    FUNC6(str);

    if (t->extensions) {
	size_t i, j;

	if (t->extensions->len == 0) {
	    FUNC16(ctx,
			   HX509_VALIDATE_F_VALIDATE|HX509_VALIDATE_F_VERBOSE,
			   "The empty extensions list is not "
			   "allowed by PKIX\n");
	}

	for (i = 0; i < t->extensions->len; i++) {

	    for (j = 0; check_extension[j].name; j++)
		if (FUNC5(check_extension[j].oid,
				     &t->extensions->val[i].extnID) == 0)
		    break;
	    if (check_extension[j].name == NULL) {
		int flags = HX509_VALIDATE_F_VERBOSE;
		if (t->extensions->val[i].critical)
		    flags |= HX509_VALIDATE_F_VALIDATE;
		FUNC16(ctx, flags, "don't know what ");
		if (t->extensions->val[i].critical)
		    FUNC16(ctx, flags, "and is CRITICAL ");
		if (ctx->flags & flags)
		    FUNC13(&t->extensions->val[i].extnID,
				    validate_vprint, ctx);
		FUNC16(ctx, flags, " is\n");
		continue;
	    }
	    FUNC16(ctx,
			   HX509_VALIDATE_F_VALIDATE|HX509_VALIDATE_F_VERBOSE,
			   "checking extention: %s\n",
			   check_extension[j].name);
	    (*check_extension[j].func)(ctx,
				       &status,
				       check_extension[j].cf,
				       &t->extensions->val[i]);
	}
    } else
	FUNC16(ctx, HX509_VALIDATE_F_VERBOSE, "no extentions\n");

    if (status.isca) {
	if (!status.haveSKI)
	    FUNC16(ctx, HX509_VALIDATE_F_VALIDATE,
			   "CA certificate have no SubjectKeyIdentifier\n");

    } else {
	if (!status.haveAKI)
	    FUNC16(ctx, HX509_VALIDATE_F_VALIDATE,
			   "Is not CA and doesn't have "
			   "AuthorityKeyIdentifier\n");
    }


    if (!status.haveSKI)
	FUNC16(ctx, HX509_VALIDATE_F_VALIDATE,
		       "Doesn't have SubjectKeyIdentifier\n");

    if (status.isproxy && status.isca)
	FUNC16(ctx, HX509_VALIDATE_F_VALIDATE,
		       "Proxy and CA at the same time!\n");

    if (status.isproxy) {
	if (status.haveSAN)
	    FUNC16(ctx, HX509_VALIDATE_F_VALIDATE,
			   "Proxy and have SAN\n");
	if (status.haveIAN)
	    FUNC16(ctx, HX509_VALIDATE_F_VALIDATE,
			   "Proxy and have IAN\n");
    }

    if (FUNC11(subject) && !status.haveSAN)
	FUNC16(ctx, HX509_VALIDATE_F_VALIDATE,
		       "NULL subject DN and doesn't have a SAN\n");

    if (!status.selfsigned && !status.haveCRLDP)
	FUNC16(ctx, HX509_VALIDATE_F_VALIDATE,
		       "Not a CA nor PROXY and doesn't have"
		       "CRL Dist Point\n");

    if (status.selfsigned) {
	ret = FUNC3(context,
						cert,
						&c->signatureAlgorithm,
						&c->tbsCertificate._save,
						&c->signatureValue);
	if (ret == 0)
	    FUNC16(ctx, HX509_VALIDATE_F_VERBOSE,
			   "Self-signed certificate was self-signed\n");
	else
	    FUNC16(ctx, HX509_VALIDATE_F_VALIDATE,
			   "Self-signed certificate NOT really self-signed!\n");
    }

    FUNC10(&subject);
    FUNC10(&issuer);

    return 0;
}