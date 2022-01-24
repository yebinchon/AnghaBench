#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  extensions; int /*<<< orphan*/ * tsa; int /*<<< orphan*/ * nonce; scalar_t__ ordering; int /*<<< orphan*/ * accuracy; int /*<<< orphan*/  time; int /*<<< orphan*/ * serial; int /*<<< orphan*/  msg_imprint; int /*<<< orphan*/  policy_id; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ TS_TST_INFO ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  CONF_VALUE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509V3_conf_free ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int nval ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC13(BIO *bio, TS_TST_INFO *a)
{
    int v;

    if (a == NULL)
        return 0;

    v = FUNC1(a->version);
    FUNC2(bio, "Version: %d\n", v);

    FUNC2(bio, "Policy OID: ");
    FUNC7(bio, a->policy_id);

    FUNC6(bio, a->msg_imprint);

    FUNC2(bio, "Serial number: ");
    if (a->serial == NULL)
        FUNC2(bio, "unspecified");
    else
        FUNC5(bio, a->serial);
    FUNC3(bio, "\n", 1);

    FUNC2(bio, "Time stamp: ");
    FUNC0(bio, a->time);
    FUNC3(bio, "\n", 1);

    FUNC2(bio, "Accuracy: ");
    if (a->accuracy == NULL)
        FUNC2(bio, "unspecified");
    else
        FUNC12(bio, a->accuracy);
    FUNC3(bio, "\n", 1);

    FUNC2(bio, "Ordering: %s\n", a->ordering ? "yes" : "no");

    FUNC2(bio, "Nonce: ");
    if (a->nonce == NULL)
        FUNC2(bio, "unspecified");
    else
        FUNC5(bio, a->nonce);
    FUNC3(bio, "\n", 1);

    FUNC2(bio, "TSA: ");
    if (a->tsa == NULL)
        FUNC2(bio, "unspecified");
    else {
        FUNC4(CONF_VALUE) *nval;
        if ((nval = FUNC10(NULL, a->tsa, NULL)))
            FUNC9(bio, nval, 0, 0);
        FUNC11(nval, X509V3_conf_free);
    }
    FUNC3(bio, "\n", 1);

    FUNC8(bio, a->extensions);

    return 1;
}