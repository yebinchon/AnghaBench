#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct ks_pkcs12 {scalar_t__ certs; struct ks_pkcs12* fn; } ;
struct hx509_collector {int dummy; } ;
typedef  int /*<<< orphan*/ * hx509_lock ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_certs ;
struct TYPE_18__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_5__ heim_octet_string ;
struct TYPE_20__ {size_t len; TYPE_4__* val; } ;
struct TYPE_15__ {TYPE_1__* content; int /*<<< orphan*/  contentType; } ;
struct TYPE_19__ {TYPE_2__ authSafe; } ;
struct TYPE_17__ {TYPE_3__* content; int /*<<< orphan*/  contentType; } ;
struct TYPE_16__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_6__ PKCS12_PFX ;
typedef  TYPE_7__ PKCS12_AuthenticatedSafe ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int HX509_CERTS_CREATE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct hx509_collector**) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct hx509_collector*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct hx509_collector*) ; 
 int /*<<< orphan*/ * _hx509_empty_lock ; 
 int /*<<< orphan*/  asn1_oid_id_pkcs7_data ; 
 struct ks_pkcs12* FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (void*,size_t,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ks_pkcs12*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct hx509_collector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC17 (char const*,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 struct ks_pkcs12* FUNC19 (char const*) ; 

__attribute__((used)) static int
FUNC20(hx509_context context,
	 hx509_certs certs, void **data, int flags,
	 const char *residue, hx509_lock lock)
{
    struct ks_pkcs12 *p12;
    size_t len;
    void *buf;
    PKCS12_PFX pfx;
    PKCS12_AuthenticatedSafe as;
    int ret;
    size_t i;
    struct hx509_collector *c;

    *data = NULL;

    if (lock == NULL)
	lock = _hx509_empty_lock;

    ret = FUNC0(context, lock, &c);
    if (ret)
	return ret;

    p12 = FUNC3(1, sizeof(*p12));
    if (p12 == NULL) {
	ret = ENOMEM;
	FUNC15(context, 0, ret, "out of memory");
	goto out;
    }

    p12->fn = FUNC19(residue);
    if (p12->fn == NULL) {
	ret = ENOMEM;
	FUNC15(context, 0, ret, "out of memory");
	goto out;
    }

    if (flags & HX509_CERTS_CREATE) {
	ret = FUNC13(context, "MEMORY:ks-file-create",
			       0, lock, &p12->certs);
	if (ret == 0)
	    *data = p12;
	goto out;
    }

    ret = FUNC17(residue, &buf, &len);
    if (ret) {
	FUNC14(context);
	goto out;
    }

    ret = FUNC6(buf, len, &pfx, NULL);
    FUNC18(buf);
    if (ret) {
	FUNC15(context, 0, ret,
			       "Failed to decode the PFX in %s", residue);
	goto out;
    }

    if (FUNC8(&pfx.authSafe.contentType, &asn1_oid_id_pkcs7_data) != 0) {
	FUNC11(&pfx);
	ret = EINVAL;
	FUNC15(context, 0, ret,
			       "PKCS PFX isn't a pkcs7-data container");
	goto out;
    }

    if (pfx.authSafe.content == NULL) {
	FUNC11(&pfx);
	ret = EINVAL;
	FUNC15(context, 0, ret,
			       "PKCS PFX missing data");
	goto out;
    }

    {
	heim_octet_string asdata;

	ret = FUNC5(pfx.authSafe.content->data,
					pfx.authSafe.content->length,
					&asdata,
					NULL);
	FUNC11(&pfx);
	if (ret) {
	    FUNC14(context);
	    goto out;
	}
	ret = FUNC4(asdata.data,
					      asdata.length,
					      &as,
					      NULL);
	FUNC7(&asdata);
	if (ret) {
	    FUNC14(context);
	    goto out;
	}
    }

    for (i = 0; i < as.len; i++)
	FUNC16(context,
			  c,
			  &as.val[i].contentType,
			  as.val[i].content->data,
			  as.val[i].content->length,
			  NULL);

    FUNC10(&as);

    ret = FUNC1(context, c, &p12->certs);
    if (ret == 0)
	*data = p12;

out:
    FUNC2(c);

    if (ret && p12) {
	if (p12->fn)
	    FUNC9(p12->fn);
	if (p12->certs)
	    FUNC12(&p12->certs);
	FUNC9(p12);
    }

    return ret;
}