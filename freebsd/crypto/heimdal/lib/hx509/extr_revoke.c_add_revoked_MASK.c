#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;
struct TYPE_6__ {scalar_t__ generalTime; } ;
struct TYPE_7__ {TYPE_1__ u; int /*<<< orphan*/  element; } ;
struct TYPE_10__ {int /*<<< orphan*/ * crlEntryExtensions; TYPE_2__ revocationDate; int /*<<< orphan*/  userCertificate; } ;
struct TYPE_9__ {TYPE_3__* revokedCertificates; } ;
struct TYPE_8__ {unsigned int len; TYPE_5__* val; } ;
typedef  TYPE_4__ TBSCRLCertList ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  choice_Time_generalTime ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (TYPE_5__*,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(hx509_context context, void *ctx, hx509_cert cert)
{
    TBSCRLCertList *c = ctx;
    unsigned int num;
    void *ptr;
    int ret;

    num = c->revokedCertificates->len;
    ptr = FUNC2(c->revokedCertificates->val,
		  (num + 1) * sizeof(c->revokedCertificates->val[0]));
    if (ptr == NULL) {
	FUNC1(context);
	return ENOMEM;
    }
    c->revokedCertificates->val = ptr;

    ret = FUNC0(cert,
				      &c->revokedCertificates->val[num].userCertificate);
    if (ret) {
	FUNC1(context);
	return ret;
    }
    c->revokedCertificates->val[num].revocationDate.element =
	choice_Time_generalTime;
    c->revokedCertificates->val[num].revocationDate.u.generalTime =
	FUNC3(NULL) - 3600 * 24;
    c->revokedCertificates->val[num].crlEntryExtensions = NULL;

    c->revokedCertificates->len++;

    return 0;
}