#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct cms_unenvelope_options {scalar_t__ allow_weak_crypto_flag; int /*<<< orphan*/  certificate_strings; scalar_t__ content_info_flag; int /*<<< orphan*/  pass_strings; } ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_certs ;
struct TYPE_11__ {int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ heim_oid ;
struct TYPE_12__ {void* data; size_t length; } ;
typedef  TYPE_2__ heim_octet_string ;

/* Variables and functions */
 int HX509_CMS_UE_ALLOW_WEAK ; 
 int FUNC0 (char*,void*,size_t) ; 
 int /*<<< orphan*/  asn1_oid_id_pkcs7_envelopedData ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (char*,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 

int
FUNC17(struct cms_unenvelope_options *opt, int argc, char **argv)
{
    heim_oid contentType = { 0, NULL };
    heim_octet_string o, co;
    hx509_certs certs;
    size_t sz;
    void *p;
    int ret;
    hx509_lock lock;
    int flags = 0;

    FUNC13(context, &lock);
    FUNC14(lock, &opt->pass_strings);

    ret = FUNC15(argv[0], &p, &sz);
    if (ret)
	FUNC5(1, "map_file: %s: %d", argv[0], ret);

    co.data = p;
    co.length = sz;

    if (opt->content_info_flag) {
	heim_octet_string uwco;
	heim_oid oid;

	ret = FUNC10(&co, &oid, &uwco, NULL);
	if (ret)
	    FUNC6(1, "hx509_cms_unwrap_ContentInfo: %d", ret);

	if (FUNC4(&oid, &asn1_oid_id_pkcs7_envelopedData) != 0)
	    FUNC6(1, "Content is not SignedData");
	FUNC3(&oid);

	co = uwco;
    }

    ret = FUNC8(context, "MEMORY:cert-store", 0, NULL, &certs);
    if (ret)
	FUNC6(1, "hx509_certs_init: MEMORY: %d", ret);

    FUNC1(context, "store", certs, lock, &opt->certificate_strings);

    if (opt->allow_weak_crypto_flag)
	flags |= HX509_CMS_UE_ALLOW_WEAK;

    ret = FUNC9(context, certs, flags, co.data, co.length,
			       NULL, 0, &contentType, &o);
    if (co.data != p)
	FUNC2(&co);
    if (ret)
	FUNC11(context, 1, ret, "hx509_cms_unenvelope");

    FUNC16(p);
    FUNC12(lock);
    FUNC7(&certs);
    FUNC3(&contentType);

    ret = FUNC0(argv[1], o.data, o.length);
    if (ret)
	FUNC6(1, "hx509_write_file: %d", ret);

    FUNC2(&o);

    return 0;
}