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
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;
struct TYPE_7__ {TYPE_2__* proxyPolicy; scalar_t__ pcPathLengthConstraint; } ;
struct TYPE_6__ {TYPE_1__* policy; int /*<<< orphan*/  policyLanguage; } ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef  TYPE_3__ PROXY_CERT_INFO_EXTENSION ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(X509V3_EXT_METHOD *method, PROXY_CERT_INFO_EXTENSION *pci,
                   BIO *out, int indent)
{
    FUNC0(out, "%*sPath Length Constraint: ", indent, "");
    if (pci->pcPathLengthConstraint)
        FUNC2(out, pci->pcPathLengthConstraint);
    else
        FUNC0(out, "infinite");
    FUNC1(out, "\n");
    FUNC0(out, "%*sPolicy Language: ", indent, "");
    FUNC3(out, pci->proxyPolicy->policyLanguage);
    FUNC1(out, "\n");
    if (pci->proxyPolicy->policy && pci->proxyPolicy->policy->data)
        FUNC0(out, "%*sPolicy Text: %s\n", indent, "",
                   pci->proxyPolicy->policy->data);
    return 1;
}