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
struct TYPE_3__ {scalar_t__ type; int flags; scalar_t__ length; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  BIO ;
typedef  TYPE_1__ ASN1_STRING ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,scalar_t__,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ V_ASN1_BIT_STRING ; 

__attribute__((used)) static int FUNC3(BIO *out, const ASN1_STRING *str, int indent)
{
    if (str->type == V_ASN1_BIT_STRING) {
        if (FUNC1(out, " (%ld unused bits)\n", str->flags & 0x7) <= 0)
            return 0;
    } else if (FUNC2(out, "\n") <= 0)
        return 0;
    if ((str->length > 0)
        && FUNC0(out, (const char *)str->data, str->length,
                           indent + 2) <= 0)
        return 0;
    return 1;
}