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
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  V_ASN1_OCTET_STRING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const X509V3_EXT_METHOD *method, void *nonce,
                          BIO *out, int indent)
{
    if (FUNC0(out, "%*s", indent, "") <= 0)
        return 0;
    if (FUNC1(out, nonce, V_ASN1_OCTET_STRING) <= 0)
        return 0;
    return 1;
}