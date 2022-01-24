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
struct TYPE_3__ {int pkey_id; } ;
typedef  TYPE_1__ EVP_PKEY_ASN1_METHOD ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ **,int) ; 
 int NID_undef ; 

int FUNC2(int type)
{
    int ret;
    const EVP_PKEY_ASN1_METHOD *ameth;
    ENGINE *e;
    ameth = FUNC1(&e, type);
    if (ameth)
        ret = ameth->pkey_id;
    else
        ret = NID_undef;
#ifndef OPENSSL_NO_ENGINE
    FUNC0(e);
#endif
    return ret;
}