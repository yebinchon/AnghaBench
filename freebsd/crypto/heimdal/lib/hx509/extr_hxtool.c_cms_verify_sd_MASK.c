#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct pem_data {scalar_t__ detached_data; TYPE_1__* os; } ;
struct cms_verify_sd_options {char* signed_content_string; scalar_t__ allow_wrong_oid_flag; int /*<<< orphan*/  signer_allowed_flag; scalar_t__ content_info_flag; scalar_t__ pem_flag; int /*<<< orphan*/  certificate_strings; int /*<<< orphan*/  anchors_strings; int /*<<< orphan*/  pass_strings; scalar_t__ missing_revoke_flag; } ;
typedef  int /*<<< orphan*/ * hx509_verify_ctx ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/ * hx509_certs ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_9__ {void* data; size_t length; } ;
typedef  TYPE_1__ heim_octet_string ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int HX509_CMS_VS_ALLOW_DATA_OID_MISMATCH ; 
 int HX509_CMS_VS_ALLOW_ZERO_SIGNER ; 
 int FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (char*,void*,size_t) ; 
 int /*<<< orphan*/  asn1_oid_id_pkcs7_signedData ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char,char**) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **) ; 
 int FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hx509_ci_print_names ; 
 int FUNC16 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,void*,size_t,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pem_data*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pem_reader ; 
 int /*<<< orphan*/  FUNC27 (char*,...) ; 
 int FUNC28 (char*,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC29 (void*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC30 (char*,char*) ; 
 char* FUNC31 (char*) ; 
 char* FUNC32 (char*,char) ; 

int
FUNC33(struct cms_verify_sd_options *opt, int argc, char **argv)
{
    hx509_verify_ctx ctx = NULL;
    heim_oid type;
    heim_octet_string c, co, signeddata, *sd = NULL;
    hx509_certs store = NULL;
    hx509_certs signers = NULL;
    hx509_certs anchors = NULL;
    hx509_lock lock;
    int ret, flags = 0;

    size_t sz;
    void *p = NULL;

    if (opt->missing_revoke_flag)
	FUNC18(context, 1);

    FUNC21(context, &lock);
    FUNC26(lock, &opt->pass_strings);

    ret = FUNC25(context, &ctx);
    if (ret)
	FUNC19(context, 1, ret, "hx509_verify_init_ctx");

    ret = FUNC14(context, "MEMORY:cms-anchors", 0, NULL, &anchors);
    if (ret)
	FUNC19(context, 1, ret, "hx509_certs_init: MEMORY");
    ret = FUNC14(context, "MEMORY:cert-store", 0, NULL, &store);
    if (ret)
	FUNC19(context, 1, ret, "hx509_certs_init: MEMORY");

    FUNC3(context, "anchors", anchors, lock, &opt->anchors_strings);
    FUNC3(context, "store", store, lock, &opt->certificate_strings);

    if (opt->pem_flag) {
	struct pem_data pd;
	FILE *f;

	pd.os = &co;
	pd.detached_data = 0;

	f = FUNC11(argv[0], "r");
	if (f == NULL)
	    FUNC8(1, "Failed to open file %s", argv[0]);

	ret = FUNC22(context, f, pem_reader, &pd);
	FUNC10(f);
	if (ret)
	    FUNC9(1, "PEM reader failed: %d", ret);

	if (pd.detached_data && opt->signed_content_string == NULL) {
	    char *r = FUNC32(argv[0], '.');
	    if (r && FUNC30(r, ".pem") == 0) {
		char *s = FUNC31(argv[0]);
		if (s == NULL)
		    FUNC9(1, "malloc: out of memory");
		s[r - argv[0]] = '\0';
		ret = FUNC0(s, &signeddata);
		if (ret)
		    FUNC9(1, "map_file: %s: %d", s, ret);
		FUNC12(s);
		sd = &signeddata;
	    }
	}

    } else {
	ret = FUNC28(argv[0], &p, &sz);
	if (ret)
	    FUNC8(1, "map_file: %s: %d", argv[0], ret);

	co.data = p;
	co.length = sz;
    }

    if (opt->signed_content_string) {
	ret = FUNC0(opt->signed_content_string, &signeddata);
	if (ret)
	    FUNC9(1, "map_file: %s: %d", opt->signed_content_string, ret);
	sd = &signeddata;
    }

    if (opt->content_info_flag) {
	heim_octet_string uwco;
	heim_oid oid;

	ret = FUNC16(&co, &oid, &uwco, NULL);
	if (ret)
	    FUNC9(1, "hx509_cms_unwrap_ContentInfo: %d", ret);

	if (FUNC6(&oid, &asn1_oid_id_pkcs7_signedData) != 0)
	    FUNC9(1, "Content is not SignedData");
	FUNC5(&oid);

	if (p == NULL)
	    FUNC4(&co);
	else {
	    FUNC29(p);
	    p = NULL;
	}
	co = uwco;
    }

    FUNC23(ctx, anchors);

    if (!opt->signer_allowed_flag)
	flags |= HX509_CMS_VS_ALLOW_ZERO_SIGNER;
    if (opt->allow_wrong_oid_flag)
	flags |= HX509_CMS_VS_ALLOW_DATA_OID_MISMATCH;

    ret = FUNC17(context, ctx, flags, co.data, co.length, sd,
				  store, &type, &c, &signers);
    if (p != co.data)
	FUNC4(&co);
    else
	FUNC29(p);
    if (ret)
	FUNC19(context, 1, ret, "hx509_cms_verify_signed");

    {
	char *str;
	FUNC7(&type, '.', &str);
	FUNC27("type: %s\n", str);
	FUNC12(str);
	FUNC5(&type);
    }
    if (signers == NULL) {
	FUNC27("unsigned\n");
    } else {
	FUNC27("signers:\n");
	FUNC15(context, signers, hx509_ci_print_names, stdout);
    }

    FUNC24(ctx);

    FUNC13(&store);
    FUNC13(&signers);
    FUNC13(&anchors);

    FUNC20(lock);

    if (argc > 1) {
	ret = FUNC2(argv[1], c.data, c.length);
	if (ret)
	    FUNC9(1, "hx509_write_file: %d", ret);
    }

    FUNC4(&c);

    if (sd)
	FUNC1(sd);

    return 0;
}