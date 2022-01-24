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
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int V_ASN1_APPLICATION ; 
 int V_ASN1_CONSTRUCTED ; 
 int V_ASN1_CONTEXT_SPECIFIC ; 
 int V_ASN1_PRIVATE ; 

__attribute__((used)) static int FUNC5(BIO *bp, int tag, int xclass, int constructed,
                           int indent)
{
    static const char fmt[] = "%-18s";
    char str[128];
    const char *p;

    if (constructed & V_ASN1_CONSTRUCTED)
        p = "cons: ";
    else
        p = "prim: ";
    if (FUNC4(bp, p, 6) < 6)
        goto err;
    FUNC1(bp, indent, 128);

    p = str;
    if ((xclass & V_ASN1_PRIVATE) == V_ASN1_PRIVATE)
        FUNC3(str, sizeof(str), "priv [ %d ] ", tag);
    else if ((xclass & V_ASN1_CONTEXT_SPECIFIC) == V_ASN1_CONTEXT_SPECIFIC)
        FUNC3(str, sizeof(str), "cont [ %d ]", tag);
    else if ((xclass & V_ASN1_APPLICATION) == V_ASN1_APPLICATION)
        FUNC3(str, sizeof(str), "appl [ %d ]", tag);
    else if (tag > 30)
        FUNC3(str, sizeof(str), "<ASN1 %d>", tag);
    else
        p = FUNC0(tag);

    if (FUNC2(bp, fmt, p) <= 0)
        goto err;
    return 1;
 err:
    return 0;
}