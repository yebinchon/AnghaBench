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
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;
struct TYPE_3__ {scalar_t__ notAfter; scalar_t__ notBefore; } ;
typedef  TYPE_1__ PKEY_USAGE_PERIOD ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC3(X509V3_EXT_METHOD *method,
                                 PKEY_USAGE_PERIOD *usage, BIO *out,
                                 int indent)
{
    FUNC1(out, "%*s", indent, "");
    if (usage->notBefore) {
        FUNC2(out, "Not Before: ", 12);
        FUNC0(out, usage->notBefore);
        if (usage->notAfter)
            FUNC2(out, ", ", 2);
    }
    if (usage->notAfter) {
        FUNC2(out, "Not After: ", 11);
        FUNC0(out, usage->notAfter);
    }
    return 1;
}