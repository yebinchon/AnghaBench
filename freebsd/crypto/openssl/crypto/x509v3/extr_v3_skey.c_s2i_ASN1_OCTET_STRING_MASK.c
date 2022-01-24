#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;
typedef  int /*<<< orphan*/  X509V3_CTX ;
struct TYPE_5__ {long length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC2 (char const*,long*) ; 
 int /*<<< orphan*/  X509V3_F_S2I_ASN1_OCTET_STRING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ASN1_OCTET_STRING *FUNC4(X509V3_EXT_METHOD *method,
                                         X509V3_CTX *ctx, const char *str)
{
    ASN1_OCTET_STRING *oct;
    long length;

    if ((oct = FUNC1()) == NULL) {
        FUNC3(X509V3_F_S2I_ASN1_OCTET_STRING, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    if ((oct->data = FUNC2(str, &length)) == NULL) {
        FUNC0(oct);
        return NULL;
    }

    oct->length = length;

    return oct;

}