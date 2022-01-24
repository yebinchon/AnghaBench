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
struct TYPE_5__ {int pkey_base_id; } ;
typedef  TYPE_1__ EVP_PKEY_ASN1_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_PKEY_ALIAS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(int to, int from)
{
    EVP_PKEY_ASN1_METHOD *ameth;
    ameth = FUNC2(from, ASN1_PKEY_ALIAS, NULL, NULL);
    if (ameth == NULL)
        return 0;
    ameth->pkey_base_id = to;
    if (!FUNC0(ameth)) {
        FUNC1(ameth);
        return 0;
    }
    return 1;
}