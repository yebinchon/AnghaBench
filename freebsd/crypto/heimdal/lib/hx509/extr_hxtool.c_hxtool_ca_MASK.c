#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct hx509_generate_private_context {int dummy; } ;
struct certificate_sign_options {int lifetime_string; int /*<<< orphan*/ * certificate_string; scalar_t__ self_signed_flag; scalar_t__ domain_controller_flag; int /*<<< orphan*/  path_length_integer; scalar_t__ issue_proxy_flag; scalar_t__ issue_ca_flag; int /*<<< orphan*/  crl_uri_string; scalar_t__ serial_number_string; int /*<<< orphan*/ * template_fields_string; int /*<<< orphan*/ * template_certificate_string; scalar_t__ subject_string; int /*<<< orphan*/ * certificate_private_key_string; int /*<<< orphan*/  key_bits_integer; int /*<<< orphan*/ * generate_key_string; int /*<<< orphan*/  req_string; int /*<<< orphan*/ * ca_private_key_string; int /*<<< orphan*/ * ca_certificate_string; } ;
typedef  int /*<<< orphan*/  spki ;
typedef  int /*<<< orphan*/  hx509_request ;
typedef  int /*<<< orphan*/  hx509_query ;
typedef  scalar_t__ hx509_private_key ;
typedef  int /*<<< orphan*/ * hx509_name ;
typedef  int /*<<< orphan*/ * hx509_certs ;
typedef  int /*<<< orphan*/ * hx509_cert ;
typedef  int /*<<< orphan*/  hx509_ca_tbs ;
typedef  int /*<<< orphan*/  heim_integer ;
struct TYPE_8__ {scalar_t__ length; } ;
struct TYPE_9__ {TYPE_1__ subjectPublicKey; } ;
typedef  TYPE_2__ SubjectPublicKeyInfo ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_CERTS_CREATE ; 
 int /*<<< orphan*/  HX509_QUERY_OPTION_KU_KEYCERTSIGN ; 
 int /*<<< orphan*/  HX509_QUERY_OPTION_PRIVATE_KEY ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct hx509_generate_private_context*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hx509_generate_private_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hx509_generate_private_context**) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct hx509_generate_private_context**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct hx509_generate_private_context*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  asn1_oid_id_pkcs1_rsaEncryption ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct certificate_sign_options*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ **) ; 
 int FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int,int,char*,...) ; 
 int FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ **) ; 
 int FUNC36 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **) ; 
 int FUNC37 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC38 (scalar_t__*) ; 
 int FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *) ; 
 int FUNC43 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC44 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC45 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC46 (int,char*) ; 
 int FUNC47 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC48 (int /*<<< orphan*/ *,scalar_t__*) ; 

int
FUNC49(struct certificate_sign_options *opt, int argc, char **argv)
{
    int ret;
    hx509_ca_tbs tbs;
    hx509_cert signer = NULL, cert = NULL;
    hx509_private_key private_key = NULL;
    hx509_private_key cert_key = NULL;
    hx509_name subject = NULL;
    SubjectPublicKeyInfo spki;
    int delta = 0;

    FUNC45(&spki, 0, sizeof(spki));

    if (opt->ca_certificate_string == NULL && !opt->self_signed_flag)
	FUNC10(1, "--ca-certificate argument missing (not using --self-signed)");
    if (opt->ca_private_key_string == NULL && opt->generate_key_string == NULL && opt->self_signed_flag)
	FUNC10(1, "--ca-private-key argument missing (using --self-signed)");
    if (opt->certificate_string == NULL)
	FUNC10(1, "--certificate argument missing");

    if (opt->template_certificate_string) {
	if (opt->template_fields_string == NULL)
	    FUNC10(1, "--template-certificate not no --template-fields");
    }

    if (opt->lifetime_string) {
	delta = FUNC46(opt->lifetime_string, "day");
	if (delta < 0)
	    FUNC10(1, "Invalid lifetime: %s", opt->lifetime_string);
    }

    if (opt->ca_certificate_string) {
	hx509_certs cacerts = NULL;
	hx509_query *q;

	ret = FUNC31(context, opt->ca_certificate_string, 0,
			       NULL, &cacerts);
	if (ret)
	    FUNC33(context, 1, ret,
		      "hx509_certs_init: %s", opt->ca_certificate_string);

	ret = FUNC39(context, &q);
	if (ret)
	    FUNC10(1, "hx509_query_alloc: %d", ret);

	FUNC41(q, HX509_QUERY_OPTION_PRIVATE_KEY);
	if (!opt->issue_proxy_flag)
	    FUNC41(q, HX509_QUERY_OPTION_KU_KEYCERTSIGN);

	ret = FUNC29(context, cacerts, q, &signer);
	FUNC40(context, q);
	FUNC30(&cacerts);
	if (ret)
	    FUNC33(context, 1, ret, "no CA certificate found");
    } else if (opt->self_signed_flag) {
	if (opt->generate_key_string == NULL
	    && opt->ca_private_key_string == NULL)
	    FUNC10(1, "no signing private key");

	if (opt->req_string)
	    FUNC10(1, "can't be self-signing and have a request at the same time");
    } else
	FUNC10(1, "missing ca key");

    if (opt->ca_private_key_string) {

	ret = FUNC48(opt->ca_private_key_string, &private_key);
	if (ret)
	    FUNC9(1, "read_private_key");

	ret = FUNC37(context, private_key, &spki);
	if (ret)
	    FUNC10(1, "hx509_private_key2SPKI: %d\n", ret);

	if (opt->self_signed_flag)
	    cert_key = private_key;
    }

    if (opt->req_string) {
	hx509_request req;

	ret = FUNC6(context, opt->req_string, &req);
	if (ret)
	    FUNC33(context, 1, ret, "parse_request: %s", opt->req_string);
	ret = FUNC44(context, req, &subject);
	if (ret)
	    FUNC33(context, 1, ret, "get name");
	ret = FUNC43(context, req, &spki);
	if (ret)
	    FUNC33(context, 1, ret, "get spki");
	FUNC42(&req);
    }

    if (opt->generate_key_string) {
	struct hx509_generate_private_context *keyctx;

	ret = FUNC4(context,
					       &asn1_oid_id_pkcs1_rsaEncryption,
					       &keyctx);
	if (ret)
	    FUNC33(context, 1, ret, "generate private key");

	if (opt->issue_ca_flag)
	    FUNC5(context, keyctx);

	if (opt->key_bits_integer)
	    FUNC2(context, keyctx,
					     opt->key_bits_integer);

	ret = FUNC1(context, keyctx,
					  &cert_key);
	FUNC3(&keyctx);
	if (ret)
	    FUNC33(context, 1, ret, "generate private key");

	ret = FUNC37(context, cert_key, &spki);
	if (ret)
	    FUNC10(1, "hx509_private_key2SPKI: %d\n", ret);

	if (opt->self_signed_flag)
	    private_key = cert_key;
    }

    if (opt->certificate_private_key_string) {
	ret = FUNC48(opt->certificate_private_key_string, &cert_key);
	if (ret)
	    FUNC9(1, "read_private_key for certificate");
    }

    if (opt->subject_string) {
	if (subject)
	    FUNC35(&subject);
	ret = FUNC36(context, opt->subject_string, &subject);
	if (ret)
	    FUNC33(context, 1, ret, "hx509_parse_name");
    }

    /*
     *
     */

    ret = FUNC17(context, &tbs);
    if (ret)
	FUNC33(context, 1, ret, "hx509_ca_tbs_init");

    if (opt->template_certificate_string) {
	hx509_cert template;
	hx509_certs tcerts;
	int flags;

	ret = FUNC31(context, opt->template_certificate_string, 0,
			       NULL, &tcerts);
	if (ret)
	    FUNC33(context, 1, ret,
		      "hx509_certs_init: %s", opt->template_certificate_string);

	ret = FUNC34(context, tcerts, &template);

	FUNC30(&tcerts);
	if (ret)
	    FUNC33(context, 1, ret, "no template certificate found");

	flags = FUNC47(opt->template_fields_string,
			    FUNC26(), "");

	ret = FUNC25(context, tbs, flags, template);
	if (ret)
	    FUNC33(context, 1, ret, "hx509_ca_tbs_set_template");

	FUNC27(template);
    }

    if (opt->serial_number_string) {
	heim_integer serialNumber;

	ret = FUNC8(opt->serial_number_string,
					 &serialNumber);
	if (ret)
	    FUNC9(1, "der_parse_hex_heim_integer");
	ret = FUNC22(context, tbs, &serialNumber);
	if (ret)
	    FUNC33(context, 1, ret, "hx509_ca_tbs_init");
	FUNC7(&serialNumber);
    }

    if (spki.subjectPublicKey.length) {
	ret = FUNC23(context, tbs, &spki);
	if (ret)
	    FUNC33(context, 1, ret, "hx509_ca_tbs_set_spki");
    }

    if (subject) {
	ret = FUNC24(context, tbs, subject);
	if (ret)
	    FUNC33(context, 1, ret, "hx509_ca_tbs_set_subject");
    }

    if (opt->crl_uri_string) {
	ret = FUNC15(context, tbs,
					  opt->crl_uri_string, NULL);
	if (ret)
	    FUNC33(context, 1, ret, "hx509_ca_tbs_add_crl_dp_uri");
    }

    FUNC11(context, tbs, opt);

    if (opt->issue_ca_flag) {
	ret = FUNC18(context, tbs, opt->path_length_integer);
	if (ret)
	    FUNC33(context, 1, ret, "hx509_ca_tbs_set_ca");
    }
    if (opt->issue_proxy_flag) {
	ret = FUNC21(context, tbs, opt->path_length_integer);
	if (ret)
	    FUNC33(context, 1, ret, "hx509_ca_tbs_set_proxy");
    }
    if (opt->domain_controller_flag) {
	FUNC19(context, tbs);
	if (ret)
	    FUNC33(context, 1, ret, "hx509_ca_tbs_set_domaincontroller");
    }

    if (delta) {
	ret = FUNC20(context, tbs, delta);
	if (ret)
	    FUNC33(context, 1, ret, "hx509_ca_tbs_set_notAfter_lifetime");
    }

    if (opt->self_signed_flag) {
	ret = FUNC14(context, tbs, private_key, &cert);
	if (ret)
	    FUNC33(context, 1, ret, "hx509_ca_sign_self");
    } else {
	ret = FUNC13(context, tbs, signer, &cert);
	if (ret)
	    FUNC33(context, 1, ret, "hx509_ca_sign");
    }

    if (cert_key) {
	ret = FUNC0(cert, cert_key);
	if (ret)
	    FUNC33(context, 1, ret, "_hx509_cert_assign_key");
    }

    {
	hx509_certs certs;

	ret = FUNC31(context, opt->certificate_string,
			       HX509_CERTS_CREATE, NULL, &certs);
	if (ret)
	    FUNC33(context, 1, ret, "hx509_certs_init");

	ret = FUNC28(context, certs, cert);
	if (ret)
	    FUNC33(context, 1, ret, "hx509_certs_add");

	ret = FUNC32(context, certs, 0, NULL);
	if (ret)
	    FUNC33(context, 1, ret, "hx509_certs_store");

	FUNC30(&certs);
    }

    if (subject)
	FUNC35(&subject);
    if (signer)
	FUNC27(signer);
    FUNC27(cert);
    FUNC12(&spki);

    if (private_key != cert_key)
	FUNC38(&private_key);
    FUNC38(&cert_key);

    FUNC16(&tbs);

    return 0;
}