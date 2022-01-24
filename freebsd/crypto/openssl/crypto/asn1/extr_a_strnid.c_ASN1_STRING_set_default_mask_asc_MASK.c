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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long B_ASN1_BMPSTRING ; 
 scalar_t__ B_ASN1_T61STRING ; 
 unsigned long B_ASN1_UTF8STRING ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 unsigned long FUNC3 (char const*,char**,int /*<<< orphan*/ ) ; 

int FUNC4(const char *p)
{
    unsigned long mask;
    char *end;

    if (FUNC2(p, "MASK:", 5) == 0) {
        if (!p[5])
            return 0;
        mask = FUNC3(p + 5, &end, 0);
        if (*end)
            return 0;
    } else if (FUNC1(p, "nombstr") == 0)
        mask = ~((unsigned long)(B_ASN1_BMPSTRING | B_ASN1_UTF8STRING));
    else if (FUNC1(p, "pkix") == 0)
        mask = ~((unsigned long)B_ASN1_T61STRING);
    else if (FUNC1(p, "utf8only") == 0)
        mask = B_ASN1_UTF8STRING;
    else if (FUNC1(p, "default") == 0)
        mask = 0xFFFFFFFFL;
    else
        return 0;
    FUNC0(mask);
    return 1;
}