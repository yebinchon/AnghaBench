#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  si ;
typedef  int /*<<< orphan*/  ai ;
struct TYPE_24__ {int /*<<< orphan*/  rdnSequence; } ;
struct TYPE_32__ {TYPE_1__ u; int /*<<< orphan*/  element; } ;
struct TYPE_31__ {int /*<<< orphan*/ * keyIdentifier; TYPE_6__* authorityCertIssuer; int /*<<< orphan*/ * authorityCertSerialNumber; } ;
struct TYPE_30__ {int /*<<< orphan*/  subject; int /*<<< orphan*/  serialNumber; TYPE_9__ issuer; } ;
struct TYPE_29__ {int len; TYPE_5__* val; } ;
struct TYPE_25__ {int /*<<< orphan*/  rdnSequence; } ;
struct TYPE_26__ {TYPE_2__ u; int /*<<< orphan*/  element; } ;
struct TYPE_27__ {TYPE_3__ directoryName; } ;
struct TYPE_28__ {scalar_t__ element; TYPE_4__ u; } ;
struct TYPE_23__ {TYPE_7__ tbsCertificate; } ;
typedef  TYPE_8__ SubjectKeyIdentifier ;
typedef  TYPE_9__ Name ;
typedef  TYPE_10__ Certificate ;
typedef  TYPE_8__ AuthorityKeyIdentifier ;

/* Variables and functions */
 int HX509_EXTENSION_NOT_FOUND ; 
 int FUNC0 (TYPE_10__ const*,TYPE_8__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_9__*,int*) ; 
 scalar_t__ choice_GeneralName_directoryName ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int FUNC4 (TYPE_10__ const*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 

int
FUNC8(const Certificate *subject,
			  const Certificate *issuer,
			  int allow_self_signed)
{
    int diff;
    AuthorityKeyIdentifier ai;
    SubjectKeyIdentifier si;
    int ret_ai, ret_si, ret;

    ret = FUNC1(&issuer->tbsCertificate.subject,
			  &subject->tbsCertificate.issuer,
			  &diff);
    if (ret)
	return ret;
    if (diff)
	return diff;

    FUNC7(&ai, 0, sizeof(ai));
    FUNC7(&si, 0, sizeof(si));

    /*
     * Try to find AuthorityKeyIdentifier, if it's not present in the
     * subject certificate nor the parent.
     */

    ret_ai = FUNC4(subject, &ai);
    if (ret_ai && ret_ai != HX509_EXTENSION_NOT_FOUND)
	return 1;
    ret_si = FUNC0(issuer, &si);
    if (ret_si && ret_si != HX509_EXTENSION_NOT_FOUND)
	return -1;

    if (ret_si && ret_ai)
	goto out;
    if (ret_ai)
	goto out;
    if (ret_si) {
	if (allow_self_signed) {
	    diff = 0;
	    goto out;
	} else if (ai.keyIdentifier) {
	    diff = -1;
	    goto out;
	}
    }

    if (ai.keyIdentifier == NULL) {
	Name name;

	if (ai.authorityCertIssuer == NULL)
	    return -1;
	if (ai.authorityCertSerialNumber == NULL)
	    return -1;

	diff = FUNC2(ai.authorityCertSerialNumber,
				    &issuer->tbsCertificate.serialNumber);
	if (diff)
	    return diff;
	if (ai.authorityCertIssuer->len != 1)
	    return -1;
	if (ai.authorityCertIssuer->val[0].element != choice_GeneralName_directoryName)
	    return -1;

	name.element =
	    ai.authorityCertIssuer->val[0].u.directoryName.element;
	name.u.rdnSequence =
	    ai.authorityCertIssuer->val[0].u.directoryName.u.rdnSequence;

	ret = FUNC1(&issuer->tbsCertificate.subject,
			      &name,
			      &diff);
	if (ret)
	    return ret;
	if (diff)
	    return diff;
	diff = 0;
    } else
	diff = FUNC3(ai.keyIdentifier, &si);
    if (diff)
	goto out;

 out:
    FUNC5(&ai);
    FUNC6(&si);
    return diff;
}