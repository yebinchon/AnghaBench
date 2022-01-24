#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ num_strings; } ;
struct TYPE_10__ {scalar_t__ num_strings; } ;
struct cms_create_sd_options {scalar_t__ detached_signature_flag; scalar_t__ pem_flag; scalar_t__ content_info_flag; int /*<<< orphan*/  content_type_string; TYPE_2__ peer_alg_strings; scalar_t__ embed_leaf_only_flag; int /*<<< orphan*/  embedded_certs_flag; int /*<<< orphan*/  signer_string; scalar_t__ signer_flag; scalar_t__ id_by_name_flag; TYPE_7__ anchors_strings; TYPE_7__ pool_strings; TYPE_7__ certificate_strings; int /*<<< orphan*/  pass_strings; } ;
typedef  int /*<<< orphan*/  hx509_query ;
typedef  int /*<<< orphan*/  hx509_pem_header ;
typedef  int /*<<< orphan*/ * hx509_peer_info ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/ * hx509_certs ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_8__ {int /*<<< orphan*/  data; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ heim_octet_string ;
typedef  int /*<<< orphan*/  contentType ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int HX509_CMS_SIGNATURE_DETACHED ; 
 int HX509_CMS_SIGNATURE_ID_NAME ; 
 int HX509_CMS_SIGNATURE_LEAF_ONLY ; 
 int HX509_CMS_SIGNATURE_NO_CERTS ; 
 int HX509_CMS_SIGNATURE_NO_SIGNER ; 
 int /*<<< orphan*/  HX509_QUERY_OPTION_KU_DIGITALSIGNATURE ; 
 int /*<<< orphan*/  HX509_QUERY_OPTION_PRIVATE_KEY ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asn1_oid_id_pkcs7_data ; 
 int /*<<< orphan*/  asn1_oid_id_pkcs7_signedData ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,TYPE_2__*) ; 
 int /*<<< orphan*/  print_signer ; 
 int FUNC31 (char*,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC32 (void*) ; 

int
FUNC33(struct cms_create_sd_options *opt, int argc, char **argv)
{
    heim_oid contentType;
    hx509_peer_info peer = NULL;
    heim_octet_string o;
    hx509_query *q;
    hx509_lock lock;
    hx509_certs store, pool, anchors, signer = NULL;
    size_t sz;
    void *p;
    int ret, flags = 0;
    char *infile, *outfile = NULL;

    FUNC28(&contentType, 0, sizeof(contentType));

    infile = argv[0];

    if (argc < 2) {
	FUNC1(&outfile, "%s.%s", infile,
		 opt->pem_flag ? "pem" : "cms-signeddata");
	if (outfile == NULL)
	    FUNC6(1, "out of memory");
    } else
	outfile = argv[1];

    FUNC18(context, &lock);
    FUNC27(lock, &opt->pass_strings);

    ret = FUNC12(context, "MEMORY:cert-store", 0, NULL, &store);
    if (ret) FUNC16(context, 1, ret, "hx509_certs_init: MEMORY");
    ret = FUNC12(context, "MEMORY:cert-pool", 0, NULL, &pool);
    if (ret) FUNC16(context, 1, ret, "hx509_certs_init: MEMORY");

    FUNC2(context, "store", store, lock, &opt->certificate_strings);
    FUNC2(context, "pool", pool, lock, &opt->pool_strings);

    if (opt->anchors_strings.num_strings) {
	ret = FUNC12(context, "MEMORY:cert-anchors",
			       0, NULL, &anchors);
	if (ret) FUNC16(context, 1, ret, "hx509_certs_init: MEMORY");
	FUNC2(context, "anchors", anchors, lock, &opt->anchors_strings);
    } else
	anchors = NULL;

    if (opt->detached_signature_flag)
	flags |= HX509_CMS_SIGNATURE_DETACHED;
    if (opt->id_by_name_flag)
	flags |= HX509_CMS_SIGNATURE_ID_NAME;
    if (!opt->signer_flag) {
	flags |= HX509_CMS_SIGNATURE_NO_SIGNER;

    }

    if (opt->signer_flag) {
	ret = FUNC23(context, &q);
	if (ret)
	    FUNC6(1, "hx509_query_alloc: %d", ret);

	FUNC26(q, HX509_QUERY_OPTION_PRIVATE_KEY);
	FUNC26(q, HX509_QUERY_OPTION_KU_DIGITALSIGNATURE);

	if (opt->signer_string)
	    FUNC25(q, opt->signer_string);

	ret = FUNC10(context, store, q, &signer);
	FUNC24(context, q);
	if (ret)
	    FUNC16(context, 1, ret, "hx509_certs_find");
    }
    if (!opt->embedded_certs_flag)
	flags |= HX509_CMS_SIGNATURE_NO_CERTS;
    if (opt->embed_leaf_only_flag)
	flags |= HX509_CMS_SIGNATURE_LEAF_ONLY;

    ret = FUNC31(infile, &p, &sz);
    if (ret)
	FUNC5(1, "map_file: %s: %d", infile, ret);

    if (opt->peer_alg_strings.num_strings)
	FUNC30(context, &peer, &opt->peer_alg_strings);

    FUNC29(opt->content_type_string, &asn1_oid_id_pkcs7_data, &contentType);

    ret = FUNC14(context,
				  flags,
				  &contentType,
				  p,
				  sz,
				  NULL,
				  signer,
				  peer,
				  anchors,
				  pool,
				  &o);
    if (ret)
	FUNC16(context, 1, ret, "hx509_cms_create_signed: %d", ret);

    FUNC11(&anchors);
    FUNC11(&pool);
    FUNC11(&store);
    FUNC32(p);
    FUNC17(lock);
    FUNC19(peer);
    FUNC4(&contentType);

    if (opt->content_info_flag) {
	heim_octet_string wo;

	ret = FUNC15(&asn1_oid_id_pkcs7_signedData, &o, &wo);
	if (ret)
	    FUNC6(1, "hx509_cms_wrap_ContentInfo: %d", ret);

	FUNC3(&o);
	o = wo;
    }

    if (opt->pem_flag) {
	hx509_pem_header *header = NULL;
	FILE *f;

	FUNC20(&header, "Content-disposition",
			     opt->detached_signature_flag ?
			     "detached" : "inline");
	if (signer) {
	    ret = FUNC13(context, signer, print_signer, header);
	    if (ret)
		FUNC16(context, 1, ret, "print signer");
	}

	f = FUNC8(outfile, "w");
	if (f == NULL)
	    FUNC5(1, "open %s", outfile);

	ret = FUNC22(context, "CMS SIGNEDDATA", header, f,
			      o.data, o.length);
	FUNC7(f);
	FUNC21(header);
	if (ret)
	    FUNC6(1, "hx509_pem_write: %d", ret);

    } else {
	ret = FUNC0(outfile, o.data, o.length);
	if (ret)
	    FUNC6(1, "hx509_write_file: %d", ret);
    }

    FUNC11(&signer);
    FUNC9(o.data);

    return 0;
}