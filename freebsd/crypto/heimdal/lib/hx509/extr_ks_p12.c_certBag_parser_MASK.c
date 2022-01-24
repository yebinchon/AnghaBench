#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct hx509_collector {int dummy; } ;
typedef  int /*<<< orphan*/  oids ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_11__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ heim_octet_string ;
struct TYPE_13__ {int /*<<< orphan*/  attrValues; } ;
struct TYPE_10__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_12__ {TYPE_1__ certValue; int /*<<< orphan*/  certType; } ;
typedef  TYPE_3__ PKCS12_CertBag ;
typedef  int /*<<< orphan*/  PKCS12_Attributes ;
typedef  TYPE_4__ PKCS12_Attribute ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct hx509_collector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  asn1_oid_id_pkcs_9_at_certTypes_x509 ; 
 int /*<<< orphan*/  const asn1_oid_id_pkcs_9_at_friendlyName ; 
 int /*<<< orphan*/  const asn1_oid_id_pkcs_9_at_localKeyId ; 
 int FUNC2 (void const*,size_t,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(hx509_context context,
	       struct hx509_collector *c,
	       const void *data, size_t length,
	       const PKCS12_Attributes *attrs)
{
    heim_octet_string os;
    hx509_cert cert;
    PKCS12_CertBag cb;
    int ret;

    ret = FUNC2(data, length, &cb, NULL);
    if (ret)
	return ret;

    if (FUNC5(&asn1_oid_id_pkcs_9_at_certTypes_x509, &cb.certType)) {
	FUNC7(&cb);
	return 0;
    }

    ret = FUNC3(cb.certValue.data,
				    cb.certValue.length,
				    &os,
				    NULL);
    FUNC7(&cb);
    if (ret)
	return ret;

    ret = FUNC9(context, os.data, os.length, &cert);
    FUNC4(&os);
    if (ret)
	return ret;

    ret = FUNC0(context, c, cert);
    if (ret) {
	FUNC8(cert);
	return ret;
    }

    {
	const PKCS12_Attribute *attr;
	const heim_oid *oids[] = {
	    &asn1_oid_id_pkcs_9_at_localKeyId, &asn1_oid_id_pkcs_9_at_friendlyName
	};
	size_t i;

	for  (i = 0; i < sizeof(oids)/sizeof(oids[0]); i++) {
	    const heim_oid *oid = oids[i];
	    attr = FUNC6(attrs, oid);
	    if (attr)
		FUNC1(context, cert, oid,
					  &attr->attrValues);
	}
    }

    FUNC8(cert);

    return 0;
}