#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct cms_envelope_options {int encryption_type_string; scalar_t__ content_info_flag; int /*<<< orphan*/  content_type_string; scalar_t__ allow_weak_crypto_flag; int /*<<< orphan*/  certificate_strings; int /*<<< orphan*/  pass_strings; } ;
typedef  int /*<<< orphan*/  hx509_query ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_certs ;
typedef  int /*<<< orphan*/  hx509_cert ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ heim_octet_string ;
typedef  int /*<<< orphan*/  contentType ;

/* Variables and functions */
 int HX509_CMS_EV_ALLOW_WEAK ; 
 int /*<<< orphan*/  HX509_QUERY_OPTION_KU_ENCIPHERMENT ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asn1_oid_id_pkcs7_data ; 
 int /*<<< orphan*/  asn1_oid_id_pkcs7_envelopedData ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC22 (char*,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC23 (void*) ; 

int
FUNC24(struct cms_envelope_options *opt, int argc, char **argv)
{
    heim_oid contentType;
    heim_octet_string o;
    const heim_oid *enctype = NULL;
    hx509_query *q;
    hx509_certs certs;
    hx509_cert cert;
    int ret;
    size_t sz;
    void *p;
    hx509_lock lock;
    int flags = 0;

    FUNC20(&contentType, 0, sizeof(contentType));

    FUNC15(context, &lock);
    FUNC19(lock, &opt->pass_strings);

    ret = FUNC22(argv[0], &p, &sz);
    if (ret)
	FUNC4(1, "map_file: %s: %d", argv[0], ret);

    ret = FUNC9(context, "MEMORY:cert-store", 0, NULL, &certs);
    if (ret) FUNC13(context, 1, ret, "hx509_certs_init: MEMORY");

    FUNC1(context, "store", certs, lock, &opt->certificate_strings);

    if (opt->allow_weak_crypto_flag)
	flags |= HX509_CMS_EV_ALLOW_WEAK;

    if (opt->encryption_type_string) {
	enctype = FUNC12(opt->encryption_type_string);
	if (enctype == NULL)
	    FUNC5(1, "encryption type: %s no found",
		 opt->encryption_type_string);
    }

    ret = FUNC16(context, &q);
    if (ret)
	FUNC5(1, "hx509_query_alloc: %d", ret);

    FUNC18(q, HX509_QUERY_OPTION_KU_ENCIPHERMENT);

    ret = FUNC7(context, certs, q, &cert);
    FUNC17(context, q);
    if (ret)
	FUNC5(1, "hx509_certs_find: %d", ret);

    FUNC21(opt->content_type_string, &asn1_oid_id_pkcs7_data, &contentType);

    ret = FUNC10(context, flags, cert, p, sz, enctype,
			       &contentType, &o);
    if (ret)
	FUNC5(1, "hx509_cms_envelope_1: %d", ret);

    FUNC6(cert);
    FUNC8(&certs);
    FUNC23(p);
    FUNC3(&contentType);

    if (opt->content_info_flag) {
	heim_octet_string wo;

	ret = FUNC11(&asn1_oid_id_pkcs7_envelopedData, &o, &wo);
	if (ret)
	    FUNC5(1, "hx509_cms_wrap_ContentInfo: %d", ret);

	FUNC2(&o);
	o = wo;
    }

    FUNC14(lock);

    ret = FUNC0(argv[1], o.data, o.length);
    if (ret)
	FUNC5(1, "hx509_write_file: %d", ret);

    FUNC2(&o);

    return 0;
}