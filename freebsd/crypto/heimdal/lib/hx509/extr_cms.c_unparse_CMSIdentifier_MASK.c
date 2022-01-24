#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/  serialNumber; int /*<<< orphan*/  issuer; } ;
struct TYPE_6__ {TYPE_2__ subjectKeyIdentifier; TYPE_3__ issuerAndSerialNumber; } ;
struct TYPE_9__ {int element; TYPE_1__ u; } ;
typedef  TYPE_2__ KeyIdentifier ;
typedef  TYPE_3__ IssuerAndSerialNumber ;
typedef  TYPE_4__ CMSIdentifier ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,...) ; 
#define  choice_CMSIdentifier_issuerAndSerialNumber 129 
#define  choice_CMSIdentifier_subjectKeyIdentifier 128 
 int FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static int
FUNC5(hx509_context context,
		      CMSIdentifier *id,
		      char **str)
{
    int ret;

    *str = NULL;
    switch (id->element) {
    case choice_CMSIdentifier_issuerAndSerialNumber: {
	IssuerAndSerialNumber *iasn;
	char *serial, *name;

	iasn = &id->u.issuerAndSerialNumber;

	ret = FUNC0(&iasn->issuer, &name);
	if(ret)
	    return ret;
	ret = FUNC2(&iasn->serialNumber, &serial);
	if (ret) {
	    FUNC3(name);
	    return ret;
	}
	FUNC1(str, "certificate issued by %s with serial number %s",
		 name, serial);
	FUNC3(name);
	FUNC3(serial);
	break;
    }
    case choice_CMSIdentifier_subjectKeyIdentifier: {
	KeyIdentifier *ki  = &id->u.subjectKeyIdentifier;
	char *keyid;
	ssize_t len;

	len = FUNC4(ki->data, ki->length, &keyid);
	if (len < 0)
	    return ENOMEM;

	FUNC1(str, "certificate with id %s", keyid);
	FUNC3(keyid);
	break;
    }
    default:
	FUNC1(str, "certificate have unknown CMSidentifier type");
	break;
    }
    if (*str == NULL)
	return ENOMEM;
    return 0;
}