#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int len; TYPE_5__* val; } ;
struct TYPE_9__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {TYPE_1__ byKey; int /*<<< orphan*/  byName; } ;
struct TYPE_11__ {int element; TYPE_2__ u; } ;
struct TYPE_15__ {TYPE_6__ responses; int /*<<< orphan*/  producedAt; TYPE_3__ responderID; } ;
struct TYPE_16__ {TYPE_7__ tbsResponseData; } ;
struct revoke_ocsp {scalar_t__ certs; TYPE_8__ ocsp; int /*<<< orphan*/ * path; } ;
typedef  int /*<<< orphan*/  ocsp ;
typedef  int /*<<< orphan*/  hx509_name ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_12__ {int element; } ;
struct TYPE_13__ {int /*<<< orphan*/  thisUpdate; scalar_t__ nextUpdate; TYPE_4__ certStatus; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  choice_OCSPCertStatus_good 132 
#define  choice_OCSPCertStatus_revoked 131 
#define  choice_OCSPCertStatus_unknown 130 
#define  choice_OCSPResponderID_byKey 129 
#define  choice_OCSPResponderID_byName 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct revoke_ocsp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hx509_ci_print_names ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char**) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct revoke_ocsp*) ; 
 int /*<<< orphan*/  FUNC10 (struct revoke_ocsp*,int /*<<< orphan*/ ,int) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/ * FUNC12 (char const*) ; 

int
FUNC13(hx509_context context, const char *path, FILE *out)
{
    struct revoke_ocsp ocsp;
    int ret;
    size_t i;

    if (out == NULL)
	out = stdout;

    FUNC10(&ocsp, 0, sizeof(ocsp));

    ocsp.path = FUNC12(path);
    if (ocsp.path == NULL)
	return ENOMEM;

    ret = FUNC9(context, &ocsp);
    if (ret) {
	FUNC4(&ocsp);
	return ret;
    }

    FUNC2(out, "signer: ");

    switch(ocsp.ocsp.tbsResponseData.responderID.element) {
    case choice_OCSPResponderID_byName: {
	hx509_name n;
	char *s;
	FUNC1(&ocsp.ocsp.tbsResponseData.responderID.u.byName, &n);
	FUNC8(n, &s);
	FUNC7(&n);
	FUNC2(out, " byName: %s\n", s);
	FUNC3(s);
	break;
    }
    case choice_OCSPResponderID_byKey: {
	char *s;
	FUNC5(ocsp.ocsp.tbsResponseData.responderID.u.byKey.data,
		   ocsp.ocsp.tbsResponseData.responderID.u.byKey.length,
		   &s);
	FUNC2(out, " byKey: %s\n", s);
	FUNC3(s);
	break;
    }
    default:
	FUNC0("choice_OCSPResponderID unknown");
	break;
    }

    FUNC2(out, "producedAt: %s\n",
	    FUNC11(ocsp.ocsp.tbsResponseData.producedAt));

    FUNC2(out, "replies: %d\n", ocsp.ocsp.tbsResponseData.responses.len);

    for (i = 0; i < ocsp.ocsp.tbsResponseData.responses.len; i++) {
	const char *status;
	switch (ocsp.ocsp.tbsResponseData.responses.val[i].certStatus.element) {
	case choice_OCSPCertStatus_good:
	    status = "good";
	    break;
	case choice_OCSPCertStatus_revoked:
	    status = "revoked";
	    break;
	case choice_OCSPCertStatus_unknown:
	    status = "unknown";
	    break;
	default:
	    status = "element unknown";
	}

	FUNC2(out, "\t%zu. status: %s\n", i, status);

	FUNC2(out, "\tthisUpdate: %s\n",
		FUNC11(ocsp.ocsp.tbsResponseData.responses.val[i].thisUpdate));
	if (ocsp.ocsp.tbsResponseData.responses.val[i].nextUpdate)
	    FUNC2(out, "\tproducedAt: %s\n",
		    FUNC11(ocsp.ocsp.tbsResponseData.responses.val[i].thisUpdate));

    }

    FUNC2(out, "appended certs:\n");
    if (ocsp.certs)
	ret = FUNC6(context, ocsp.certs, hx509_ci_print_names, out);

    FUNC4(&ocsp);
    return ret;
}