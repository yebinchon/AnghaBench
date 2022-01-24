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
struct TYPE_3__ {int length; unsigned char* data; } ;
typedef  int /*<<< orphan*/  BIO ;
typedef  TYPE_1__ ASN1_STRING ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,unsigned char const,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC3(BIO *bp, const ASN1_STRING *sig, int indent)
{
    const unsigned char *s;
    int i, n;

    n = sig->length;
    s = sig->data;
    for (i = 0; i < n; i++) {
        if ((i % 18) == 0) {
            if (FUNC2(bp, "\n", 1) <= 0)
                return 0;
            if (FUNC0(bp, indent, indent) <= 0)
                return 0;
        }
        if (FUNC1(bp, "%02x%s", s[i], ((i + 1) == n) ? "" : ":") <= 0)
            return 0;
    }
    if (FUNC2(bp, "\n", 1) != 1)
        return 0;

    return 1;
}