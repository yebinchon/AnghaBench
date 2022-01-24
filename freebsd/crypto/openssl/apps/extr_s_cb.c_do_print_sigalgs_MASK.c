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
 int NID_undef ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int*,int*,int /*<<< orphan*/ *,unsigned char*,unsigned char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int*,int*,int /*<<< orphan*/ *,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(BIO *out, SSL *s, int shared)
{
    int i, nsig, client;
    client = FUNC5(s) ? 0 : 1;
    if (shared)
        nsig = FUNC3(s, 0, NULL, NULL, NULL, NULL, NULL);
    else
        nsig = FUNC4(s, -1, NULL, NULL, NULL, NULL, NULL);
    if (nsig == 0)
        return 1;

    if (shared)
        FUNC1(out, "Shared ");

    if (client)
        FUNC1(out, "Requested ");
    FUNC1(out, "Signature Algorithms: ");
    for (i = 0; i < nsig; i++) {
        int hash_nid, sign_nid;
        unsigned char rhash, rsign;
        const char *sstr = NULL;
        if (shared)
            FUNC3(s, i, &sign_nid, &hash_nid, NULL,
                                   &rsign, &rhash);
        else
            FUNC4(s, i, &sign_nid, &hash_nid, NULL, &rsign, &rhash);
        if (i)
            FUNC1(out, ":");
        sstr = FUNC6(sign_nid);
        if (sstr)
            FUNC0(out, "%s", sstr);
        else
            FUNC0(out, "0x%02X", (int)rsign);
        if (hash_nid != NID_undef)
            FUNC0(out, "+%s", FUNC2(hash_nid));
        else if (sstr == NULL)
            FUNC0(out, "+0x%02X", (int)rhash);
    }
    FUNC1(out, "\n");
    return 1;
}