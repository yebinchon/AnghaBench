#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_13__ {int /*<<< orphan*/  byKey; int /*<<< orphan*/  byName; } ;
struct TYPE_14__ {int element; TYPE_1__ u; } ;
struct TYPE_16__ {int /*<<< orphan*/  _save; TYPE_2__ responderID; } ;
struct TYPE_17__ {int /*<<< orphan*/  signature; TYPE_4__ tbsResponseData; int /*<<< orphan*/  signatureAlgorithm; } ;
struct revoke_ocsp {int /*<<< orphan*/ * signer; TYPE_5__ ocsp; scalar_t__ certs; } ;
struct TYPE_18__ {int /*<<< orphan*/ * keyhash_sha1; int /*<<< orphan*/  match; int /*<<< orphan*/ * subject_name; int /*<<< orphan*/ * issuer_name; } ;
typedef  TYPE_6__ hx509_query ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  scalar_t__ hx509_certs ;
typedef  int /*<<< orphan*/ * hx509_cert ;
struct TYPE_15__ {int /*<<< orphan*/  _save; int /*<<< orphan*/  issuer; } ;
struct TYPE_19__ {int /*<<< orphan*/  signatureValue; TYPE_3__ tbsCertificate; int /*<<< orphan*/  signatureAlgorithm; } ;
typedef  TYPE_7__ Certificate ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_ERROR_APPEND ; 
 int HX509_PARENT_NOT_CA ; 
 int /*<<< orphan*/  HX509_QUERY_MATCH_ISSUER_NAME ; 
 int /*<<< orphan*/  HX509_QUERY_MATCH_KEY_HASH_SHA1 ; 
 int /*<<< orphan*/  HX509_QUERY_MATCH_SUBJECT_NAME ; 
 int FUNC0 (TYPE_7__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  asn1_oid_id_pkix_kp_OCSPSigning ; 
#define  choice_OCSPResponderID_byKey 129 
#define  choice_OCSPResponderID_byName 128 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,TYPE_6__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int
FUNC9(hx509_context context,
	    struct revoke_ocsp *ocsp,
	    time_t time_now,
	    hx509_certs certs,
	    hx509_cert parent)
{
    hx509_cert signer = NULL;
    hx509_query q;
    int ret;

    FUNC2(&q);

    /*
     * Need to match on issuer too in case there are two CA that have
     * issued the same name to a certificate. One example of this is
     * the www.openvalidation.org test's ocsp validator.
     */

    q.match = HX509_QUERY_MATCH_ISSUER_NAME;
    q.issuer_name = &FUNC1(parent)->tbsCertificate.issuer;

    switch(ocsp->ocsp.tbsResponseData.responderID.element) {
    case choice_OCSPResponderID_byName:
	q.match |= HX509_QUERY_MATCH_SUBJECT_NAME;
	q.subject_name = &ocsp->ocsp.tbsResponseData.responderID.u.byName;
	break;
    case choice_OCSPResponderID_byKey:
	q.match |= HX509_QUERY_MATCH_KEY_HASH_SHA1;
	q.keyhash_sha1 = &ocsp->ocsp.tbsResponseData.responderID.u.byKey;
	break;
    }

    ret = FUNC7(context, certs, &q, &signer);
    if (ret && ocsp->certs)
	ret = FUNC7(context, ocsp->certs, &q, &signer);
    if (ret)
	goto out;

    /*
     * If signer certificate isn't the CA certificate, lets check the
     * it is the CA that signed the signer certificate and the OCSP EKU
     * is set.
     */
    if (FUNC5(signer, parent) != 0) {
	Certificate *p = FUNC1(parent);
	Certificate *s = FUNC1(signer);

	ret = FUNC0(s, p, 0);
	if (ret != 0) {
	    ret = HX509_PARENT_NOT_CA;
	    FUNC8(context, 0, ret, "Revoke OCSP signer is "
				   "doesn't have CA as signer certificate");
	    goto out;
	}

	ret = FUNC3(context,
						parent,
						&s->signatureAlgorithm,
						&s->tbsCertificate._save,
						&s->signatureValue);
	if (ret) {
	    FUNC8(context, HX509_ERROR_APPEND, ret,
				   "OCSP signer signature invalid");
	    goto out;
	}

	ret = FUNC4(context, signer,
				   &asn1_oid_id_pkix_kp_OCSPSigning, 0);
	if (ret)
	    goto out;
    }

    ret = FUNC3(context,
					    signer,
					    &ocsp->ocsp.signatureAlgorithm,
					    &ocsp->ocsp.tbsResponseData._save,
					    &ocsp->ocsp.signature);
    if (ret) {
	FUNC8(context, HX509_ERROR_APPEND, ret,
			       "OCSP signature invalid");
	goto out;
    }

    ocsp->signer = signer;
    signer = NULL;
out:
    if (signer)
	FUNC6(signer);

    return ret;
}