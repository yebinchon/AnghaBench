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
typedef  int /*<<< orphan*/  X509V3_CTX ;
typedef  int /*<<< orphan*/  ASN1_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *,unsigned char**) ; 

__attribute__((used)) static unsigned char *FUNC3(const char *value, X509V3_CTX *ctx,
                                   long *ext_len)
{
    ASN1_TYPE *typ;
    unsigned char *ext_der = NULL;
    typ = FUNC1(value, ctx);
    if (typ == NULL)
        return NULL;
    *ext_len = FUNC2(typ, &ext_der);
    FUNC0(typ);
    return ext_der;
}