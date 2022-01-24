#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  extensions; scalar_t__ cert_req; int /*<<< orphan*/ * nonce; int /*<<< orphan*/  msg_imprint; } ;
typedef  TYPE_1__ TS_REQ ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(BIO *bio, TS_REQ *a)
{
    int v;
    ASN1_OBJECT *policy_id;

    if (a == NULL)
        return 0;

    v = FUNC6(a);
    FUNC0(bio, "Version: %d\n", v);

    FUNC3(bio, a->msg_imprint);

    FUNC0(bio, "Policy OID: ");
    policy_id = FUNC5(a);
    if (policy_id == NULL)
        FUNC0(bio, "unspecified\n");
    else
        FUNC4(bio, policy_id);

    FUNC0(bio, "Nonce: ");
    if (a->nonce == NULL)
        FUNC0(bio, "unspecified");
    else
        FUNC2(bio, a->nonce);
    FUNC1(bio, "\n", 1);

    FUNC0(bio, "Certificate required: %s\n",
               a->cert_req ? "yes" : "no");

    FUNC7(bio, a->extensions);

    return 1;
}