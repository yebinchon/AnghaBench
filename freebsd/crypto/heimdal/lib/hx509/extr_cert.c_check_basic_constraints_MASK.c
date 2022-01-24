#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_context ;
typedef  enum certtype { ____Placeholder_certtype } certtype ;
struct TYPE_16__ {size_t* pathLenConstraint; int /*<<< orphan*/ * cA; } ;
struct TYPE_12__ {int /*<<< orphan*/  subject; } ;
struct TYPE_15__ {TYPE_1__ tbsCertificate; } ;
struct TYPE_13__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {TYPE_2__ extnValue; } ;
typedef  TYPE_3__ Extension ;
typedef  TYPE_4__ Certificate ;
typedef  TYPE_5__ BasicConstraints ;

/* Variables and functions */
#define  CA_CERT 130 
#define  EE_CERT 129 
 int HX509_CA_PATH_TOO_DEEP ; 
 int HX509_EXTENSION_NOT_FOUND ; 
 int HX509_PARENT_IS_CA ; 
 int HX509_PARENT_NOT_CA ; 
#define  PROXY_CERT 128 
 int FUNC0 (TYPE_4__ const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  asn1_oid_id_x509_ce_basicConstraints ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,size_t*) ; 
 TYPE_3__* FUNC4 (TYPE_4__ const*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static int
FUNC8(hx509_context context, const Certificate *cert,
			enum certtype type, size_t depth)
{
    BasicConstraints bc;
    const Extension *e;
    size_t size;
    int ret;
    size_t i = 0;

    if (FUNC0(cert) < 3)
	return 0;

    e = FUNC4(cert, &asn1_oid_id_x509_ce_basicConstraints, &i);
    if (e == NULL) {
	switch(type) {
	case PROXY_CERT:
	case EE_CERT:
	    return 0;
	case CA_CERT: {
	    char *name;
	    ret = FUNC1(&cert->tbsCertificate.subject, &name);
	    FUNC2(ret == 0);
	    FUNC7(context, 0, HX509_EXTENSION_NOT_FOUND,
				   "basicConstraints missing from "
				   "CA certifiacte %s", name);
	    FUNC5(name);
	    return HX509_EXTENSION_NOT_FOUND;
	}
	}
    }

    ret = FUNC3(e->extnValue.data,
				  e->extnValue.length, &bc,
				  &size);
    if (ret)
	return ret;
    switch(type) {
    case PROXY_CERT:
	if (bc.cA != NULL && *bc.cA)
	    ret = HX509_PARENT_IS_CA;
	break;
    case EE_CERT:
	ret = 0;
	break;
    case CA_CERT:
	if (bc.cA == NULL || !*bc.cA)
	    ret = HX509_PARENT_NOT_CA;
	else if (bc.pathLenConstraint)
	    if (depth - 1 > *bc.pathLenConstraint)
		ret = HX509_CA_PATH_TOO_DEEP;
	break;
    }
    FUNC6(&bc);
    return ret;
}