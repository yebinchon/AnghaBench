#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;
typedef  TYPE_2__* hx509_ca_tbs ;
struct TYPE_10__ {size_t len; int /*<<< orphan*/ * val; } ;
struct TYPE_8__ {int serial; int key; } ;
struct TYPE_9__ {int /*<<< orphan*/  key_usage; TYPE_1__ flags; int /*<<< orphan*/  spki; int /*<<< orphan*/  notAfter; int /*<<< orphan*/  notBefore; int /*<<< orphan*/  serial; scalar_t__ subject; } ;
typedef  int /*<<< orphan*/  KeyUsage ;
typedef  TYPE_3__ ExtKeyUsage ;

/* Variables and functions */
 int HX509_CA_TEMPLATE_EKU ; 
 int HX509_CA_TEMPLATE_KU ; 
 int HX509_CA_TEMPLATE_NOTAFTER ; 
 int HX509_CA_TEMPLATE_NOTBEFORE ; 
 int HX509_CA_TEMPLATE_SERIAL ; 
 int HX509_CA_TEMPLATE_SPKI ; 
 int HX509_CA_TEMPLATE_SUBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

int
FUNC14(hx509_context context,
			  hx509_ca_tbs tbs,
			  int flags,
			  hx509_cert cert)
{
    int ret;

    if (flags & HX509_CA_TEMPLATE_SUBJECT) {
	if (tbs->subject)
	    FUNC12(&tbs->subject);
	ret = FUNC11(cert, &tbs->subject);
	if (ret) {
	    FUNC13(context, 0, ret,
				   "Failed to get subject from template");
	    return ret;
	}
    }
    if (flags & HX509_CA_TEMPLATE_SERIAL) {
	FUNC3(&tbs->serial);
	ret = FUNC10(cert, &tbs->serial);
	tbs->flags.serial = !ret;
	if (ret) {
	    FUNC13(context, 0, ret,
				   "Failed to copy serial number");
	    return ret;
	}
    }
    if (flags & HX509_CA_TEMPLATE_NOTBEFORE)
	tbs->notBefore = FUNC9(cert);
    if (flags & HX509_CA_TEMPLATE_NOTAFTER)
	tbs->notAfter = FUNC8(cert);
    if (flags & HX509_CA_TEMPLATE_SPKI) {
	FUNC5(&tbs->spki);
	ret = FUNC7(context, cert, &tbs->spki);
	tbs->flags.key = !ret;
	if (ret)
	    return ret;
    }
    if (flags & HX509_CA_TEMPLATE_KU) {
	KeyUsage ku;
	ret = FUNC2(context, cert, &ku);
	if (ret)
	    return ret;
	tbs->key_usage = FUNC0(ku);
    }
    if (flags & HX509_CA_TEMPLATE_EKU) {
	ExtKeyUsage eku;
	size_t i;
	ret = FUNC1(context, cert, &eku);
	if (ret)
	    return ret;
	for (i = 0; i < eku.len; i++) {
	    ret = FUNC6(context, tbs, &eku.val[i]);
	    if (ret) {
		FUNC4(&eku);
		return ret;
	    }
	}
	FUNC4(&eku);
    }
    return 0;
}