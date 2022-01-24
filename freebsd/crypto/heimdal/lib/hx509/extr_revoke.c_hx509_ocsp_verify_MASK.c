#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  hx509_name ;
typedef  TYPE_8__* hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;
struct TYPE_24__ {size_t len; TYPE_5__* val; } ;
struct TYPE_25__ {TYPE_6__ responses; } ;
struct TYPE_27__ {TYPE_7__ tbsResponseData; } ;
struct TYPE_26__ {scalar_t__ ocsp_time_diff; } ;
struct TYPE_22__ {int element; } ;
struct TYPE_21__ {int /*<<< orphan*/  issuerNameHash; int /*<<< orphan*/  hashAlgorithm; int /*<<< orphan*/  serialNumber; } ;
struct TYPE_23__ {scalar_t__ thisUpdate; scalar_t__* nextUpdate; TYPE_4__ certStatus; TYPE_3__ certID; } ;
struct TYPE_19__ {int /*<<< orphan*/  _save; } ;
struct TYPE_20__ {TYPE_1__ issuer; int /*<<< orphan*/  serialNumber; } ;
struct TYPE_18__ {TYPE_2__ tbsCertificate; } ;
typedef  TYPE_9__ OCSPBasicOCSPResponse ;
typedef  TYPE_10__ Certificate ;

/* Variables and functions */
 int HX509_CERT_NOT_IN_OCSP ; 
 TYPE_10__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  choice_OCSPCertStatus_good 130 
#define  choice_OCSPCertStatus_revoked 129 
#define  choice_OCSPCertStatus_unknown 128 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,int /*<<< orphan*/ ,int,char*,...) ; 
 int FUNC10 (void const*,size_t,TYPE_9__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(hx509_context context,
		  time_t now,
		  hx509_cert cert,
		  int flags,
		  const void *data, size_t length,
		  time_t *expiration)
{
    const Certificate *c = FUNC0(cert);
    OCSPBasicOCSPResponse basic;
    int ret;
    size_t i;

    if (now == 0)
	now = FUNC11(NULL);

    *expiration = 0;

    ret = FUNC10(data, length, &basic);
    if (ret) {
	FUNC9(context, 0, ret,
			       "Failed to parse OCSP response");
	return ret;
    }

    for (i = 0; i < basic.tbsResponseData.responses.len; i++) {

	ret = FUNC2(&basic.tbsResponseData.responses.val[i].certID.serialNumber,
			       &c->tbsCertificate.serialNumber);
	if (ret != 0)
	    continue;

	/* verify issuer hashes hash */
	ret = FUNC1(context,
				      NULL,
				      &basic.tbsResponseData.responses.val[i].certID.hashAlgorithm,
				      &c->tbsCertificate.issuer._save,
				      &basic.tbsResponseData.responses.val[i].certID.issuerNameHash);
	if (ret != 0)
	    continue;

	switch (basic.tbsResponseData.responses.val[i].certStatus.element) {
	case choice_OCSPCertStatus_good:
	    break;
	case choice_OCSPCertStatus_revoked:
	case choice_OCSPCertStatus_unknown:
	    continue;
	}

	/* don't allow the update to be in the future */
	if (basic.tbsResponseData.responses.val[i].thisUpdate >
	    now + context->ocsp_time_diff)
	    continue;

	/* don't allow the next update to be in the past */
	if (basic.tbsResponseData.responses.val[i].nextUpdate) {
	    if (*basic.tbsResponseData.responses.val[i].nextUpdate < now)
		continue;
	    *expiration = *basic.tbsResponseData.responses.val[i].nextUpdate;
	} else
	    *expiration = now;

	FUNC4(&basic);
	return 0;
    }

    FUNC4(&basic);

    {
	hx509_name name;
	char *subject;

	ret = FUNC5(cert, &name);
	if (ret) {
	    FUNC6(context);
	    goto out;
	}
	ret = FUNC8(name, &subject);
	FUNC7(&name);
	if (ret) {
	    FUNC6(context);
	    goto out;
	}
	FUNC9(context, 0, HX509_CERT_NOT_IN_OCSP,
			       "Certificate %s not in OCSP response "
			       "or not good",
			       subject);
	FUNC3(subject);
    }
out:
    return HX509_CERT_NOT_IN_OCSP;
}