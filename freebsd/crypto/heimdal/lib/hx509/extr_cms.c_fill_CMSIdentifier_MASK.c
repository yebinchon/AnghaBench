#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_name ;
typedef  int /*<<< orphan*/  hx509_cert ;
struct TYPE_5__ {int /*<<< orphan*/  serialNumber; int /*<<< orphan*/  issuer; } ;
struct TYPE_6__ {TYPE_1__ issuerAndSerialNumber; int /*<<< orphan*/  subjectKeyIdentifier; } ;
struct TYPE_7__ {TYPE_2__ u; int /*<<< orphan*/  element; } ;
typedef  TYPE_3__ CMSIdentifier ;

/* Variables and functions */
#define  CMS_ID_NAME 129 
#define  CMS_ID_SKI 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  choice_CMSIdentifier_issuerAndSerialNumber ; 
 int /*<<< orphan*/  choice_CMSIdentifier_subjectKeyIdentifier ; 
 int FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(const hx509_cert cert,
		   int type,
		   CMSIdentifier *id)
{
    int ret;

    switch (type) {
    case CMS_ID_SKI:
	id->element = choice_CMSIdentifier_subjectKeyIdentifier;
	ret = FUNC1(FUNC2(cert),
						   &id->u.subjectKeyIdentifier);
	if (ret == 0)
	    break;
	/* FALL THOUGH */
    case CMS_ID_NAME: {
	hx509_name name;

	id->element = choice_CMSIdentifier_issuerAndSerialNumber;
	ret = FUNC3(cert, &name);
	if (ret)
	    return ret;
	ret = FUNC6(name, &id->u.issuerAndSerialNumber.issuer);
	FUNC5(&name);
	if (ret)
	    return ret;

	ret = FUNC4(cert, &id->u.issuerAndSerialNumber.serialNumber);
	break;
    }
    default:
	FUNC0("CMS fill identifier with unknown type");
    }
    return ret;
}