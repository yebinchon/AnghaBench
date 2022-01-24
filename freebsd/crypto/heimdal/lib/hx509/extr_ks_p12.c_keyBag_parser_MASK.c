#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct hx509_collector {int dummy; } ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  heim_octet_string ;
struct TYPE_7__ {int /*<<< orphan*/  attrValues; } ;
struct TYPE_6__ {int /*<<< orphan*/  privateKey; int /*<<< orphan*/  privateKeyAlgorithm; } ;
typedef  TYPE_1__ PKCS8PrivateKeyInfo ;
typedef  int /*<<< orphan*/  PKCS12_Attributes ;
typedef  TYPE_2__ PKCS12_Attribute ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hx509_collector*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  asn1_oid_id_pkcs_9_at_localKeyId ; 
 int FUNC1 (void const*,size_t,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(hx509_context context,
	      struct hx509_collector *c,
	      const void *data, size_t length,
	      const PKCS12_Attributes *attrs)
{
    const PKCS12_Attribute *attr;
    PKCS8PrivateKeyInfo ki;
    const heim_octet_string *os = NULL;
    int ret;

    attr = FUNC2(attrs, &asn1_oid_id_pkcs_9_at_localKeyId);
    if (attr)
	os = &attr->attrValues;

    ret = FUNC1(data, length, &ki, NULL);
    if (ret)
	return ret;

    FUNC0(context,
				     c,
				     &ki.privateKeyAlgorithm,
				     NULL,
				     &ki.privateKey,
				     os);
    FUNC3(&ki);
    return 0;
}