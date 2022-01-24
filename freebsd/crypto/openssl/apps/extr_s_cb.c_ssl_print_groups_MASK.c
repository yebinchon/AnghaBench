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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int TLSEXT_nid_unknown ; 
 int* FUNC7 (int,char*) ; 

int FUNC8(BIO *out, SSL *s, int noshared)
{
    int i, ngroups, *groups, nid;
    const char *gname;

    ngroups = FUNC5(s, NULL);
    if (ngroups <= 0)
        return 1;
    groups = FUNC7(ngroups * sizeof(int), "groups to print");
    FUNC5(s, groups);

    FUNC1(out, "Supported Elliptic Groups: ");
    for (i = 0; i < ngroups; i++) {
        if (i)
            FUNC1(out, ":");
        nid = groups[i];
        /* If unrecognised print out hex version */
        if (nid & TLSEXT_nid_unknown) {
            FUNC0(out, "0x%04X", nid & 0xFFFF);
        } else {
            /* TODO(TLS1.3): Get group name here */
            /* Use NIST name for curve if it exists */
            gname = FUNC2(nid);
            if (gname == NULL)
                gname = FUNC3(nid);
            FUNC0(out, "%s", gname);
        }
    }
    FUNC4(groups);
    if (noshared) {
        FUNC1(out, "\n");
        return 1;
    }
    FUNC1(out, "\nShared Elliptic groups: ");
    ngroups = FUNC6(s, -1);
    for (i = 0; i < ngroups; i++) {
        if (i)
            FUNC1(out, ":");
        nid = FUNC6(s, i);
        /* TODO(TLS1.3): Convert for DH groups */
        gname = FUNC2(nid);
        if (gname == NULL)
            gname = FUNC3(nid);
        FUNC0(out, "%s", gname);
    }
    if (ngroups == 0)
        FUNC1(out, "NONE");
    FUNC1(out, "\n");
    return 1;
}