#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  gns ;
typedef  int /*<<< orphan*/  gn ;
struct TYPE_24__ {int /*<<< orphan*/  serialNumber; int /*<<< orphan*/  subject; } ;
struct TYPE_26__ {TYPE_5__ tbsCertificate; } ;
struct TYPE_20__ {int /*<<< orphan*/  rdnSequence; } ;
struct TYPE_21__ {TYPE_1__ u; int /*<<< orphan*/  element; } ;
struct TYPE_22__ {int /*<<< orphan*/  rdnSequence; TYPE_2__ directoryName; } ;
struct TYPE_25__ {int /*<<< orphan*/  len; int /*<<< orphan*/  val; TYPE_3__ u; int /*<<< orphan*/  element; } ;
struct TYPE_23__ {int /*<<< orphan*/  len; int /*<<< orphan*/  val; } ;
struct TYPE_19__ {int /*<<< orphan*/ * authorityCertSerialNumber; TYPE_4__* authorityCertIssuer; int /*<<< orphan*/ * keyIdentifier; } ;
typedef  int /*<<< orphan*/  SubjectKeyIdentifier ;
typedef  TYPE_6__ Name ;
typedef  TYPE_6__ GeneralNames ;
typedef  TYPE_6__ GeneralName ;
typedef  TYPE_9__ Certificate ;
typedef  TYPE_10__ AuthorityKeyIdentifier ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (TYPE_9__ const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_6__*,TYPE_6__*) ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  choice_GeneralName_directoryName ; 
 int /*<<< orphan*/  choice_GeneralName_directoryName_rdnSequence ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(hx509_context context,
			   const Certificate *certificate,
			   AuthorityKeyIdentifier *ai)
{
    SubjectKeyIdentifier si;
    int ret;

    ret = FUNC0(certificate, &si);
    if (ret == 0) {
	ai->keyIdentifier = FUNC2(1, sizeof(*ai->keyIdentifier));
	if (ai->keyIdentifier == NULL) {
	    FUNC7(&si);
	    ret = ENOMEM;
	    FUNC8(context, 0, ret, "Out of memory");
	    goto out;
	}
	ret = FUNC5(&si, ai->keyIdentifier);
	FUNC7(&si);
	if (ret) {
	    FUNC8(context, 0, ret, "Out of memory");
	    goto out;
	}
    } else {
	GeneralNames gns;
	GeneralName gn;
	Name name;

	FUNC9(&gn, 0, sizeof(gn));
	FUNC9(&gns, 0, sizeof(gns));
	FUNC9(&name, 0, sizeof(name));

	ai->authorityCertIssuer =
	    FUNC2(1, sizeof(*ai->authorityCertIssuer));
	if (ai->authorityCertIssuer == NULL) {
	    ret = ENOMEM;
	    FUNC8(context, 0, ret, "Out of memory");
	    goto out;
	}
	ai->authorityCertSerialNumber =
	    FUNC2(1, sizeof(*ai->authorityCertSerialNumber));
	if (ai->authorityCertSerialNumber == NULL) {
	    ret = ENOMEM;
	    FUNC8(context, 0, ret, "Out of memory");
	    goto out;
	}

	/*
	 * XXX unbreak when asn1 compiler handle IMPLICIT
	 *
	 * This is so horrible.
	 */

	ret = FUNC3(&certificate->tbsCertificate.subject, &name);
	if (ret) {
	    FUNC8(context, 0, ret, "Out of memory");
	    goto out;
	}

	FUNC9(&gn, 0, sizeof(gn));
	gn.element = choice_GeneralName_directoryName;
	gn.u.directoryName.element =
	    choice_GeneralName_directoryName_rdnSequence;
	gn.u.directoryName.u.rdnSequence = name.u.rdnSequence;

	ret = FUNC1(&gns, &gn);
	if (ret) {
	    FUNC8(context, 0, ret, "Out of memory");
	    goto out;
	}

	ai->authorityCertIssuer->val = gns.val;
	ai->authorityCertIssuer->len = gns.len;

	ret = FUNC4(&certificate->tbsCertificate.serialNumber,
				    ai->authorityCertSerialNumber);
	if (ai->authorityCertSerialNumber == NULL) {
	    ret = ENOMEM;
	    FUNC8(context, 0, ret, "Out of memory");
	    goto out;
	}
    }
out:
    if (ret)
	FUNC6(ai);
    return ret;
}