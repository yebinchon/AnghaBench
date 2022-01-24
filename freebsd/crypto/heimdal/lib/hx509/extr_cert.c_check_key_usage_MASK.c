#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_10__ {int /*<<< orphan*/  subject; } ;
struct TYPE_12__ {TYPE_2__ tbsCertificate; } ;
struct TYPE_9__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {TYPE_1__ extnValue; } ;
typedef  int /*<<< orphan*/  KeyUsage ;
typedef  TYPE_3__ Extension ;
typedef  TYPE_4__ Certificate ;

/* Variables and functions */
 int HX509_KU_CERT_MISSING ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  asn1_oid_id_x509_ce_keyUsage ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 TYPE_3__* FUNC5 (TYPE_4__ const*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC9(hx509_context context, const Certificate *cert,
		unsigned flags, int req_present)
{
    const Extension *e;
    KeyUsage ku;
    size_t size;
    int ret;
    size_t i = 0;
    unsigned ku_flags;

    if (FUNC1(cert) < 3)
	return 0;

    e = FUNC5(cert, &asn1_oid_id_x509_ce_keyUsage, &i);
    if (e == NULL) {
	if (req_present) {
	    FUNC7(context, 0, HX509_KU_CERT_MISSING,
				   "Required extension key "
				   "usage missing from certifiate");
	    return HX509_KU_CERT_MISSING;
	}
	return 0;
    }

    ret = FUNC4(e->extnValue.data, e->extnValue.length, &ku, &size);
    if (ret)
	return ret;
    ku_flags = FUNC0(ku);
    if ((ku_flags & flags) != flags) {
	unsigned missing = (~ku_flags) & flags;
	char buf[256], *name;

	FUNC8(missing, FUNC3(), buf, sizeof(buf));
	FUNC2(&cert->tbsCertificate.subject, &name);
	FUNC7(context, 0, HX509_KU_CERT_MISSING,
			       "Key usage %s required but missing "
			       "from certifiate %s", buf, name);
	FUNC6(name);
	return HX509_KU_CERT_MISSING;
    }
    return 0;
}