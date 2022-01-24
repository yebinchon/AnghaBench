#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  oidstr ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC8 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * reject ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int trust ; 

int FUNC12(BIO *out, X509 *x, int indent)
{
    char oidstr[80], first;
    FUNC4(ASN1_OBJECT) *trust, *reject;
    const unsigned char *alias, *keyid;
    int keyidlen;
    int i;
    if (FUNC9(x) == 0)
        return 1;
    trust = FUNC7(x);
    reject = FUNC6(x);
    if (trust) {
        first = 1;
        FUNC0(out, "%*sTrusted Uses:\n%*s", indent, "", indent + 2, "");
        for (i = 0; i < FUNC10(trust); i++) {
            if (!first)
                FUNC1(out, ", ");
            else
                first = 0;
            FUNC3(oidstr, sizeof(oidstr),
                        FUNC11(trust, i), 0);
            FUNC1(out, oidstr);
        }
        FUNC1(out, "\n");
    } else
        FUNC0(out, "%*sNo Trusted Uses.\n", indent, "");
    if (reject) {
        first = 1;
        FUNC0(out, "%*sRejected Uses:\n%*s", indent, "", indent + 2, "");
        for (i = 0; i < FUNC10(*reject); i++) {
            if (!first)
                FUNC1(out, ", ");
            else
                first = 0;
            FUNC3(oidstr, sizeof(oidstr),
                        FUNC11(*reject, i), 0);
            FUNC1(out, oidstr);
        }
        FUNC1(out, "\n");
    } else
        FUNC0(out, "%*sNo Rejected Uses.\n", indent, "");
    alias = FUNC5(x, NULL);
    if (alias)
        FUNC0(out, "%*sAlias: %s\n", indent, "", alias);
    keyid = FUNC8(x, &keyidlen);
    if (keyid) {
        FUNC0(out, "%*sKey Id: ", indent, "");
        for (i = 0; i < keyidlen; i++)
            FUNC0(out, "%s%02X", i ? ":" : "", keyid[i]);
        FUNC2(out, "\n", 1);
    }
    return 1;
}